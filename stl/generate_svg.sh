# !/bin/bash

# Path to .stl file
in_path="./compartments_stl"
# Path to generated data
out_path="./compartments_svg_sql"
# .stl stores data in mm, use the scale parameter to convert
scale=0.001
# amidship's value in mm
amidship=60594

# Generating names and creating directories
rm -rf "${out_path}"
tmp_path="${out_path}/tmp"
mkdir -p "${out_path}/tmp"
# Create empty file with for queries 
: > "${out_path}/geometry_insert.sql"

files=$(find "${in_path}" -type f -name "*.stl")
idx=1
for file in $files; do

name=$(basename -- "${file}" .stl)
type=$(echo ${file} | ggrep -Pio "(?<=$(PROMPT_EOL_MARK=''; printf "%q" "${in_path}")\/)(.*)(?=\/${name}.stl)")

############ GET SHAPE DATA OF .stl MODEL ############
stl_data=$(admesh --no-check "${file}")
min_x=$(echo ${stl_data}    | ggrep -Pio 'Min X =\s{0,15}-{0,1}\d+\.\d+'    | awk '{gsub(/[^0-9.-]/, ""); print $1}')
min_y=$(echo ${stl_data}    | ggrep -Pio 'Min Y =\s{0,15}-{0,1}\d+\.\d+'    | awk '{gsub(/[^0-9.-]/, ""); print $1}')
min_z=$(echo ${stl_data}    | ggrep -Pio 'Min Z =\s{0,15}-{0,1}\d+\.\d+'    | awk '{gsub(/[^0-9.-]/, ""); print $1}')
max_x=$(echo ${stl_data}    | ggrep -Pio 'Max X =\s{0,15}-{0,1}\d+\.\d+'    | awk '{gsub(/[^0-9.-]/, ""); print $1}')
max_y=$(echo ${stl_data}    | ggrep -Pio 'Max Y =\s{0,15}-{0,1}\d+\.\d+'    | awk '{gsub(/[^0-9.-]/, ""); print $1}')
max_z=$(echo ${stl_data}    | ggrep -Pio 'Max Z =\s{0,15}-{0,1}\d+\.\d+'    | awk '{gsub(/[^0-9.-]/, ""); print $1}')
volume=$(echo ${stl_data}   | ggrep -Pio 'Volume\s{0,15}:\s{0,15}\d+\.\d+'  | awk '{gsub(/[^0-9.-]/, ""); print $1}')
width=$(bc <<< "(${max_x}-(${min_x}))")
length=$(bc <<< "(${max_y}-(${min_y}))")
height=$(bc <<< "(${max_z}-(${min_z}))")

proj_scad_path="${tmp_path}/projection.scad"
shift_x=$(bc <<< "-(${min_x})-(${width}/2.0)")
shift_y=$(bc <<< "-(${min_y})-(${length}/2.0)")
shift_z=$(bc <<< "-(${min_z})-(${height}/2.0)")
############ CREATE XY PROJECTION IN SVG FORMAT ############
cat > "${proj_scad_path}" <<- SVG_PROJECTION
shift_x=${shift_x};
shift_y=${shift_y};
shift_z=${shift_z};
admidship=${amidship};
projection(cut=false) {
    scale ([${scale}, ${scale}, ${scale}]) {
        translate([-shift_x-admidship, -shift_y, -shift_z]) {
            rotate([0.0, 0.0, 0.0]) {
                translate([shift_x, shift_y, shift_z]) {
                    import("${file}");
                };
            };
        };
    };
};
SVG_PROJECTION
openscad -o "${out_path}/${name}_xy.svg" "${proj_scad_path}"
############ CREATE XZ PROJECTION IN SVG FORMAT ############
cat > "${proj_scad_path}" <<- SVG_PROJECTION
shift_x=${shift_x};
shift_y=${shift_y};
shift_z=${shift_z};
admidship=${amidship};
projection(cut=false) {
    scale ([0.001, -0.001, 0.001]) {
        translate([-shift_x-admidship, -shift_z, shift_y]) {
            rotate([-90.0, 0.0, 0.0]) {
                translate([shift_x, shift_y, shift_z]) {
                    import("${file}");
                };
            };
        };
    };
};
SVG_PROJECTION
openscad -o "${out_path}/${name}_xz.svg" "${proj_scad_path}" > /dev/null 2>&1
############ CREATE YZ PROJECTION IN SVG FORMAT ############
cat > "${proj_scad_path}" <<- SVG_PROJECTION
shift_x=${shift_x};
shift_y=${shift_y};
shift_z=${shift_z};
admidship=${amidship};
projection(cut=false) {
    scale ([-0.001, -0.001, 0.001]) {
        translate([-shift_y, -shift_z, -shift_x-admidship]) {
            rotate([0.0, -90.0, -90.0]) {
                translate([shift_x, shift_y, shift_z]) {
                    import("${file}");
                };
            };
        };
    };
};
SVG_PROJECTION
openscad -o "${out_path}/${name}_yz.svg" "${proj_scad_path}" > /dev/null 2>&1

############ GENERATE SQL QUERIES WITH SHAPE DATA INFO ############
table_name="load_space"
ship_id=1
proj_json_path="${tmp_path}/path.json"
cat > "${proj_json_path}" <<- PROJ_JSON
{
"xy": "$(cat "${out_path}/${name}_xy.svg" | tr '\n' ' ' | ggrep -Pio '(?<=path d=")([^"]+)(?=")')",
"xz": "$(cat "${out_path}/${name}_xz.svg" | tr '\n' ' ' | ggrep -Pio '(?<=path d=")([^"]+)(?=")')",
"yz": "$(cat "${out_path}/${name}_yz.svg" | tr '\n' ' ' | ggrep -Pio '(?<=path d=")([^"]+)(?=")')"
}
PROJ_JSON


# fill with sql query
cat >> "${out_path}/geometry_insert.sql" <<- SQL_QUERIES
INSERT INTO ${table_name}
    (ship_id, space_id, key, value, value_type, unit)
VALUES
    (${ship_id}, ${idx}, 'name', '${name}', 'text', NULL),
    (${ship_id}, ${idx}, 'type', '${type}', 'text', NULL),
    (${ship_id}, ${idx}, 'mass', '0.0', 'real', 't'),
    (${ship_id}, ${idx}, 'center_x', '0.0', 'real', 'm'),
    (${ship_id}, ${idx}, 'center_y', '0.0', 'real', 'm'),
    (${ship_id}, ${idx}, 'center_z', '0.0', 'real', 'm'),
    (${ship_id}, ${idx}, 'max_volume', '$(bc <<< "scale=16;${volume}*(${scale}^3)")'::DOUBLE PRECISION::TEXT, 'real', 'm^3'),
    (${ship_id}, ${idx}, 'bound_x1', '$(bc <<< "(${min_x}-(${amidship}))*${scale}")'::DOUBLE PRECISION::TEXT, 'real', 'm'),
    (${ship_id}, ${idx}, 'bound_x2', '$(bc <<< "(${max_x}-(${amidship}))*${scale}")'::DOUBLE PRECISION::TEXT, 'real', 'm'),
    (${ship_id}, ${idx}, 'bound_y1', '$(bc <<< "-(${min_y})*${scale}")'::DOUBLE PRECISION::TEXT, 'real', 'm'),
    (${ship_id}, ${idx}, 'bound_y2', '$(bc <<< "-(${max_y})*${scale}")'::DOUBLE PRECISION::TEXT, 'real', 'm'),
    (${ship_id}, ${idx}, 'bound_z1', '$(bc <<< "(${min_z})*${scale}")'::DOUBLE PRECISION::TEXT, 'real', 'm'),
    (${ship_id}, ${idx}, 'bound_z2', '$(bc <<< "(${max_z})*${scale}")'::DOUBLE PRECISION::TEXT, 'real', 'm'),
    (${ship_id}, ${idx}, 'path', '$(cat "${proj_json_path}")', 'projection_path', NULL);
SQL_QUERIES

idx=$(($idx + 1))
done

############ DELETE EXTRA GENERATED FILES ############
rm -rf "${tmp_path}"
