#!/bin/bash

# Path to .stl file
in_path="/Users/nikitasermyagin/Downloads/BT1 SB.stl"
# Path to generated data
out_path="./"
# .stl stores data in mm, use the scale parameter to convert
scale=0.001
# amidship's value in mm
amidship=60594

# Generating names and creating directories
tmp_path="${out_path}/tmp"
name=$(basename -- "${in_path}" .stl)
mkdir -p "${out_path}/tmp"

############ GET SHAPE DATA ABOUT .stl MODEL ############
stl_data=$(admesh --no-check "${in_path}")
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
############ CREATE XY PROJECTION SVG ############
cat > "${proj_scad_path}" <<- SVG_PROJECTION
projection(cut=false) {
    rotate([0.0, 0.0, 0.0]) {
        scale ([${scale}, -(${scale}), ${scale}]) {
            translate([(-${min_x})-(${width}/2.0), -(${min_y})-(${length}/2.0), -(${min_z})-(${height}/2.0)]) {
                import("${in_path}");
            };s
        };
    };
};
SVG_PROJECTION
openscad -o "${tmp_path}/${name}_xy.svg" "${proj_scad_path}"
############ CREATE XZ PROJECTION SVG ############
cat > "${proj_scad_path}" <<- SVG_PROJECTION
projection(cut=false) {
    rotate([-90.0, 0.0, 0.0]) {
        scale ([${scale}, -(${scale}), ${scale}]) {
            translate([(-${min_x})-(${width}/2.0), -(${min_y})-(${length}/2.0), -(${min_z})-(${height}/2.0)]) {
                import("${in_path}");
            };
        };
    };
};
SVG_PROJECTION
openscad -o "${tmp_path}/${name}_xz.svg" "${proj_scad_path}"
############ CREATE YZ PROJECTION SVG ############
cat > "${proj_scad_path}" <<- SVG_PROJECTION
projection(cut=false) {
    rotate([0.0, -90.0, -90.0]) {
        scale ([${scale}, -(${scale}), ${scale}]) {
            translate([(-${min_x})-(${width}/2.0), -(${min_y})-(${length}/2.0), -(${min_z})-(${height}/2.0)]) {
                import("${in_path}");
            };
        };
    };
};
SVG_PROJECTION
openscad -o "${tmp_path}/${name}_yz.svg" "${proj_scad_path}"

############ GENERATE SQL QUERIES ############
table_name="load_space"
ship_id=2
space_id=1
cat > "${tmp_path}/geometry_insert.sql" <<- SQL_QUERIES
INSERT INTO ${table_name}
    (ship_id, space_id, key, value, value_type, unit)
VALUES
    (${ship_id}, ${space_id}, 'name', '${name}', 'text', NULL),
    (${ship_id}, ${space_id}, 'max_volume', '$(bc <<< "${volume}*(${scale})*(${scale})*(${scale})")'::DOUBLE PRECISION::TEXT, 'real', 'm^3'),
    (${ship_id}, ${space_id}, 'bound_x1', '$(bc <<< "(${min_x}-(${amidship}))*${scale}")'::DOUBLE PRECISION::TEXT, 'real', 'm'),
    (${ship_id}, ${space_id}, 'bound_x2', '$(bc <<< "(${max_x}-(${amidship}))*${scale}")'::DOUBLE PRECISION::TEXT, 'real', 'm'),
    (${ship_id}, ${space_id}, 'bound_y1', '$(bc <<< "-(${min_y})*${scale}")'::DOUBLE PRECISION::TEXT, 'real', 'm'),
    (${ship_id}, ${space_id}, 'bound_y2', '$(bc <<< "-(${max_y})*${scale}")'::DOUBLE PRECISION::TEXT, 'real', 'm'),
    (${ship_id}, ${space_id}, 'bound_z1', '$(bc <<< "(${min_z})*${scale}")'::DOUBLE PRECISION::TEXT, 'real', 'm'),
    (${ship_id}, ${space_id}, 'bound_z2', '$(bc <<< "(${max_z})*${scale}")'::DOUBLE PRECISION::TEXT, 'real', 'm');
SQL_QUERIES