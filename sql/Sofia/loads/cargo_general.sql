-- --
-- -- Data for Name: shape; Type: TABLE DATA; Schema: public; Owner: test
-- --

-- INSERT INTO public.shape (id, type) OVERRIDING SYSTEM VALUE VALUES (1, 'cuboid');
-- INSERT INTO public.shape (id, type) OVERRIDING SYSTEM VALUE VALUES (2, 'sphere');
-- INSERT INTO public.shape (id, type) OVERRIDING SYSTEM VALUE VALUES (3, 'cylinder_longitudinal');
-- INSERT INTO public.shape (id, type) OVERRIDING SYSTEM VALUE VALUES (4, 'cylinder_transverse');
-- INSERT INTO public.shape (id, type) OVERRIDING SYSTEM VALUE VALUES (5, 'cylinder_vertical');
-- INSERT INTO public.shape (id, type) OVERRIDING SYSTEM VALUE VALUES (6, 'cuboid');
-- INSERT INTO public.shape (id, type) OVERRIDING SYSTEM VALUE VALUES (7, 'cuboid');
-- INSERT INTO public.shape (id, type) OVERRIDING SYSTEM VALUE VALUES (8, 'cuboid');
-- INSERT INTO public.shape (id, type) OVERRIDING SYSTEM VALUE VALUES (9, 'sphere');
-- INSERT INTO public.shape (id, type) OVERRIDING SYSTEM VALUE VALUES (10, 'cylinder_vertical');
-- INSERT INTO public.shape (id, type) OVERRIDING SYSTEM VALUE VALUES (11, 'cylinder_transverse');
-- INSERT INTO public.shape (id, type) OVERRIDING SYSTEM VALUE VALUES (12, 'cylinder_longitudinal');


-- --
-- -- Data for Name: cargo_general; Type: TABLE DATA; Schema: public; Owner: test
-- --

-- INSERT INTO public.cargo_general (id, project_id, ship_id, name, mass, timber, bound_x1, bound_x2, bound_y1, bound_y2, bound_z1, bound_z2, mass_shift_x, mass_shift_y, mass_shift_z, mass_shift_x_local, mass_shift_y_local, mass_shift_z_local, horizontal_area, horizontal_area_shift_x, horizontal_area_shift_y, horizontal_area_shift_z, vertical_area, vertical_area_shift_x, vertical_area_shift_y, vertical_area_shift_z, category_id, shape_id, space_id) OVERRIDING SYSTEM VALUE VALUES (2, NULL, 2, 'CubeTest2', 20, false, 4.2, 9.2, -1, 1, 12.38, 14.38, 6.7, 0, 13.38, 2.5, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 7, 1);
-- INSERT INTO public.cargo_general (id, project_id, ship_id, name, mass, timber, bound_x1, bound_x2, bound_y1, bound_y2, bound_z1, bound_z2, mass_shift_x, mass_shift_y, mass_shift_z, mass_shift_x_local, mass_shift_y_local, mass_shift_z_local, horizontal_area, horizontal_area_shift_x, horizontal_area_shift_y, horizontal_area_shift_z, vertical_area, vertical_area_shift_x, vertical_area_shift_y, vertical_area_shift_z, category_id, shape_id, space_id) OVERRIDING SYSTEM VALUE VALUES (1, NULL, 2, 'CubeTest1', 10, false, 4.2, 6.2, -6.6, -4.6, 12.38, 14.38, 5.2, -5.6, 13.38, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 6, 1);
-- INSERT INTO public.cargo_general (id, project_id, ship_id, name, mass, timber, bound_x1, bound_x2, bound_y1, bound_y2, bound_z1, bound_z2, mass_shift_x, mass_shift_y, mass_shift_z, mass_shift_x_local, mass_shift_y_local, mass_shift_z_local, horizontal_area, horizontal_area_shift_x, horizontal_area_shift_y, horizontal_area_shift_z, vertical_area, vertical_area_shift_x, vertical_area_shift_y, vertical_area_shift_z, category_id, shape_id, space_id) OVERRIDING SYSTEM VALUE VALUES (4, NULL, 2, 'SphereTest1', 25, false, 19, 25, -3, 3, 12.38, 18.380000000000003, 22, 0, 15.38, 3, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 9, 2);
-- INSERT INTO public.cargo_general (id, project_id, ship_id, name, mass, timber, bound_x1, bound_x2, bound_y1, bound_y2, bound_z1, bound_z2, mass_shift_x, mass_shift_y, mass_shift_z, mass_shift_x_local, mass_shift_y_local, mass_shift_z_local, horizontal_area, horizontal_area_shift_x, horizontal_area_shift_y, horizontal_area_shift_z, vertical_area, vertical_area_shift_x, vertical_area_shift_y, vertical_area_shift_z, category_id, shape_id, space_id) OVERRIDING SYSTEM VALUE VALUES (7, NULL, 2, 'CylinderLongitudinalTest1', 0, false, 100, 101, -8, -6, 12.38, 14.38, 100.5, -7, 13.38, 0.5, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 12, 2);
-- INSERT INTO public.cargo_general (id, project_id, ship_id, name, mass, timber, bound_x1, bound_x2, bound_y1, bound_y2, bound_z1, bound_z2, mass_shift_x, mass_shift_y, mass_shift_z, mass_shift_x_local, mass_shift_y_local, mass_shift_z_local, horizontal_area, horizontal_area_shift_x, horizontal_area_shift_y, horizontal_area_shift_z, vertical_area, vertical_area_shift_x, vertical_area_shift_y, vertical_area_shift_z, category_id, shape_id, space_id) OVERRIDING SYSTEM VALUE VALUES (5, NULL, 2, 'CylynderVerticalTest1', 0, false, 40, 46, 2, 8, 12.38, 15.38, 43, 5, 13.88, 3, 3, 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 10, 2);
-- INSERT INTO public.cargo_general (id, project_id, ship_id, name, mass, timber, bound_x1, bound_x2, bound_y1, bound_y2, bound_z1, bound_z2, mass_shift_x, mass_shift_y, mass_shift_z, mass_shift_x_local, mass_shift_y_local, mass_shift_z_local, horizontal_area, horizontal_area_shift_x, horizontal_area_shift_y, horizontal_area_shift_z, vertical_area, vertical_area_shift_x, vertical_area_shift_y, vertical_area_shift_z, category_id, shape_id, space_id) OVERRIDING SYSTEM VALUE VALUES (6, NULL, 2, 'CylinderTransverseTest1', 0, false, 70, 74, -1, 1, 12.38, 16.380000000000003, 72, 0, 14.38, 2, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 11, 2);
-- INSERT INTO public.cargo_general (id, project_id, ship_id, name, mass, timber, bound_x1, bound_x2, bound_y1, bound_y2, bound_z1, bound_z2, mass_shift_x, mass_shift_y, mass_shift_z, mass_shift_x_local, mass_shift_y_local, mass_shift_z_local, horizontal_area, horizontal_area_shift_x, horizontal_area_shift_y, horizontal_area_shift_z, vertical_area, vertical_area_shift_x, vertical_area_shift_y, vertical_area_shift_z, category_id, shape_id, space_id) OVERRIDING SYSTEM VALUE VALUES (3, NULL, 2, 'CubeTest3', 10, false, 8.9, 10.9, 4.6, 6.6, 12.38, 14.38, 9.9, 5.6, 13.38, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 8, 1);


-- --
-- -- Data for Name: shape_parameter; Type: TABLE DATA; Schema: public; Owner: test
-- --

-- INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (1, 1, 'xSize', 8);
-- INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (2, 1, 'ySize', 4);
-- INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (3, 1, 'zSize', 2);
-- INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (4, 2, 'radius', 5);
-- INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (5, 3, 'length', 8);
-- INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (6, 3, 'radius', 4);
-- INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (7, 4, 'length', 8);
-- INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (8, 4, 'radius', 4);
-- INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (9, 5, 'length', 8);
-- INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (10, 5, 'radius', 4);
-- INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (11, 6, 'xSize', 2);
-- INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (12, 6, 'ySize', 2);
-- INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (13, 6, 'zSize', 2);
-- INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (14, 7, 'xSize', 5);
-- INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (15, 7, 'ySize', 2);
-- INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (16, 7, 'zSize', 2);
-- INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (17, 8, 'xSize', 2);
-- INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (18, 8, 'ySize', 2);
-- INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (19, 8, 'zSize', 2);
-- INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (20, 9, 'radius', 3);
-- INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (21, 10, 'length', 3);
-- INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (22, 10, 'radius', 3);
-- INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (23, 11, 'length', 2);
-- INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (24, 11, 'radius', 2);
-- INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (25, 12, 'length', 1);
-- INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (26, 12, 'radius', 1);

--
-- Insert new general_cargo with shape and location data
--
CREATE OR REPLACE FUNCTION add_general_cargo_loaded(
    _cargo_name TEXT,
    _mass NUMERIC,
    _ship_id INT,
    _space_id INT,
    _category_id INT,
    _shape_type TEXT,
    _shape_params jsonb, -- e.g.'{"length": 8, "radius": 4}'
    _bounds NUMERIC[], -- [x1, x2, y1, y2, z1, z2]
    _mass_shift NUMERIC[],  -- [x, y, z]
    _mass_shift_local NUMERIC[]   -- [x, y, z]
) RETURNS INT AS $$
DECLARE
    _shape_id INT;
    _p_key TEXT;
    _p_val NUMERIC;
    _cargo_id INT;
BEGIN
    --
    INSERT INTO shape (type) 
    VALUES (_shape_type::shape_type) 
    RETURNING id INTO _shape_id;
    -- 
    INSERT INTO shape_parameter (shape_id, name, value)
    SELECT _shape_id, key, value::NUMERIC
    FROM jsonb_each_text(_shape_params);
    --
    INSERT INTO cargo_general (
        name, mass, ship_id, space_id, category_id, shape_id,
        bound_x1, bound_x2, bound_y1, bound_y2, bound_z1, bound_z2,
        mass_shift_x, mass_shift_y, mass_shift_z,
        mass_shift_x_local, mass_shift_y_local, mass_shift_z_local
    ) VALUES (
        _cargo_name, _mass, _ship_id, _space_id, _category_id, _shape_id,
        _bounds[1], _bounds[2], _bounds[3], _bounds[4], _bounds[5], _bounds[6], -- Global bounds
        _mass_shift[1], _mass_shift[2], _mass_shift[3],                   -- Global cg shift
        _mass_shift_local[1], _mass_shift_local[2], _mass_shift_local[3]                 -- Local cg shift
    ) RETURNING id INTO _cargo_id;
    RETURN _cargo_id;
END;
$$ LANGUAGE plpgsql;
--
-- Test examples for Sofia
--
BEGIN;
--
-- Accomodation:
--
-- CubeTest1
SELECT add_general_cargo_loaded(
    'CubeTest1', 10, 2, 1, 14, 
    'cuboid', '{"xSize": 2, "ySize": 2, "zSize": 2}', 
    ARRAY[4.2, 6.2, -6.6, -4.6, 12.38, 14.38], 
    ARRAY[5.2, -5.6, 13.38], 
    ARRAY[1, 1, 1]
);
-- CubeTest2
SELECT add_general_cargo_loaded(
    'CubeTest2', 20, 2, 1, 14, 
    'cuboid', '{"xSize": 5, "ySize": 2, "zSize": 2}', 
    ARRAY[4.2, 9.2, -1, 1, 12.38, 14.38], 
    ARRAY[6.7, 0, 13.38], 
    ARRAY[2.5, 1, 1]
);
-- CubeTest3
SELECT add_general_cargo_loaded(
    'CubeTest3', 10, 2, 1, 14, 
    'cuboid', '{"xSize": 2, "ySize": 2, "zSize": 2}', 
    ARRAY[8.9, 10.9, 4.6, 6.6, 12.38, 14.38], 
    ARRAY[9.9, 5.6, 13.38], 
    ARRAY[1, 1, 1]
);
--
-- Deck loading zone:
--
-- SphereTest1
SELECT add_general_cargo_loaded(
    'SphereTest1', 25, 2, 2, 14, 
    'sphere', '{"radius": 3}', 
    ARRAY[19, 25, -3, 3, 12.38, 18.38], 
    ARRAY[22, 0, 15.38], 
    ARRAY[3, 3, 3]
);
-- CylynderVerticalTest1
SELECT add_general_cargo_loaded(
    'CylynderVerticalTest1', 0, 2, 2, 14, 
    'cylinder_vertical', '{"length": 3, "radius": 3}', 
    ARRAY[40, 46, 2, 8, 12.38, 15.38], 
    ARRAY[43, 5, 13.88], 
    ARRAY[3, 3, 1.5]
);
-- CylinderTransverseTest1
SELECT add_general_cargo_loaded(
    'CylinderTransverseTest1', 0, 2, 2, 14, 
    'cylinder_transverse', '{"length": 2, "radius": 2}', 
    ARRAY[70, 74, -1, 1, 12.38, 16.38], 
    ARRAY[72, 0, 14.38], 
    ARRAY[2, 1, 2]
);
-- CylinderLongitudinalTest1
SELECT add_general_cargo_loaded(
    'CylinderLongitudinalTest1', 0, 2, 2, 14, 
    'cylinder_longitudinal', '{"length": 1, "radius": 1}', 
    ARRAY[100, 101, -8, -6, 12.38, 14.38], 
    ARRAY[100.5, -7, 13.38], 
    ARRAY[0.5, 1, 1]
);
COMMIT;