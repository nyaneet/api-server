#!/bin/bash
# create a deb package from rust sources

############ LIST OF MANAGED VARIABLES REQUIRED FOR DEB PACKAGE ############
name=api-server
version=0.1.15
descriptionShort="API Server wrapping databases, executable and python scripts plugins."
descriptionExtended="API Server - service running on the socket.
Provides simple and universe access to the databases, executable and python plugins.
Wrapping databases:
 SQLite
 MySQL
 PostgreSQL
Runs puthon script:
 Python script received some json data via stdin
 Python script handle some algorithms
 Python script can access to the databases data via self API or directly
 Python script returns some json data
Runs binaty executable:
 Executable received some json data via stdin
 Executable handle some algorithms
 Executable can access to the databases data via self API or directly
 Executable returns some json data"
changeDetails="
- TcpServer | clean threads
- Some fixes in the TcpConnection
- ApiQuery moved to the library
"
copyrightNotice="Copyright 2024 anton lobanov"
maintainer="anton lobanov <lobanov.anton@gmail.com>"
licenseName="GNU GENERAL PUBLIC LICENSE v3.0"
licenseFile="LICENSE"

############ LIST OF MANAGED VARIABLES OPTIONAL FOR DEB PACKAGE ############
# list of assets in the format:
# 	<sourcePath> <installPath> <permissions>
assets=(
	"./target/release/api-server /usr/bin/ 755",
	"./service/api-server.service /etc/systemd/system/"
	"./config.yaml /home/scada/api-server/"
)
outputDir=target/
# 'any', 'all' or one of the supported architecture (e.g., 'amd64', 'arm64', 'i386', 'armhf')
# you can choose one of the provided by `dpkg-architecture -L` or leave the field blank for automatic detection
arch=
# comma separated list of the package dependecies in the following format:
# "<package_name> [(<<|>>|<=|>=|= <version>)], ..."
# e.g. "foo (>=2.34), bar"
depends=""

# check required variables
echo "Checking reqired variables ..."
missedVarMsg="non-empty value required"
echo "${!name@}=${name:?$missedVarMsg}"
echo "${!version@}=${version:?$missedVarMsg}"
echo "${!descriptionShort@}=${descriptionShort:?$missedVarMsg}"
echo "${!descriptionExtended@}=${descriptionExtended:?$missedVarMsg}"
echo "${!changeDetails@}=${changeDetails:?$missedVarMsg}"
echo "${!copyrightNotice@}=${copyrightNotice:?$missedVarMsg}"
echo "${!maintainer@}=${maintainer:?$missedVarMsg}"
echo "${!licenseName@}=${licenseName:?$missedVarMsg}"
echo "${!licenseFile@}=${licenseFile:?$missedVarMsg}"

echo "Start packaging ..."

############ INITIALIZE THE PACKAGE SOURCE STRUCTURE AND COPY RESOURCES ############

arch=${arch:=$(dpkg --print-architecture)}
debFileName="${name}_${version}_${arch}"
packageRoot=$(readlink -m "/tmp/debian/${debFileName}")

if [[ -d $packageRoot ]]; then
	echo "Freeing the directory for temporary build files ..."
	rm -rf $packageRoot
fi

echo "Creating ${packageRoot} directory for temporary build files ..."
mkdir -p "$packageRoot"
echo "Creating ${packageRoot}/DEBIAN directory ..."
mkdir -p "${packageRoot}/DEBIAN"

copyAsset() {
	sourcePath=$1; targetDir=$2; permissions=$3
	assetPath=$(readlink -m "$sourcePath")
	if [[ ! -d $assetPath && ! -f $assetPath ]]; then
		echo "Asset ${assetPath} not found."
		exit 1
	fi
	installPath=$(readlink -m "${packageRoot}/${targetDir}")
	mkdir -p $installPath && cp -r "$assetPath" "$installPath"
	echo "Copying ${assetPath} to ${installPath} ..."
	if [[ -d $assetPath ]]; then
		chmod -R "$permissions" "$installPath"
	elif [[ -f $assetPath ]]; then
		chmod "$permissions" "${installPath}/$(basename ${assetPath})"
	fi
}
for asset in "${assets[@]}"; do
	read -ra assetOptions <<< $asset
	copyAsset ${assetOptions[0]} ${assetOptions[1]} ${assetOptions[2]}
done

############ CREATE A DEB CONTROL FILE ############

echo "Creating ${packageRoot}/DEBIAN/control file ..."
cat > "${packageRoot}/DEBIAN/control" <<- CONTROL
	Section: rust
	Priority: optional
	Version: $version
	Maintainer: $maintainer
	Package: $name
	Architecture: $arch
	Depends: $depends
	Description: $descriptionShort
	$(echo "$descriptionExtended" | sed "s/^/ /")
CONTROL

############ CREATE CHANGELOG AND COPYRIGHT FILES ############

docDir="${packageRoot}/usr/share/doc/${name}"
mkdir -p "$docDir"

echo "Generating changelog file ..."
changelogFile="${docDir}/changelog"
cat > "$changelogFile" <<- CHANGELOG
	$name ($version) unstable; urgency=medium

	$(echo "$changeDetails" | sed "s/^/  * /")

	$(echo " -- $maintainer  $(date -R)")


CHANGELOG
gzip -n --best "$changelogFile"
rm -f "$changelogFile"

echo "Generating copyright file ..."
copyrightFile="${docDir}/copyright"
cat > "$copyrightFile" <<- COPYRIGHT
	Format: https://www.debian.org/doc/packaging-manuals/copyright-format/1.0/
	Upstream-Name: $name
	Copyright: $copyrightNotice
	License: $licenseName
	$(cat "$licenseFile" | sed "s/^/ /")
COPYRIGHT

############ CREATE MD5 SUM FILES ############

cd $packageRoot
md5sum $(find . -type f -printf "%P\n" | grep -v "^DEBIAN/") > DEBIAN/md5sums
cd - > /dev/null

############ BUILD A DEB PACKAGE ############
echo "Building deb package ..."
dpkg-deb --build "${packageRoot}" "$outputDir" > /dev/null || exit 1 
echo "Deleting temporary created ${packageRoot} directory"
rm -rf "${packageRoot}"
echo "Debian package created and saved in $(readlink -m "${outputDir}/${debFileName}.deb")"