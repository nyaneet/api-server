-- Постоянная нагрузка на судно, распределенная по шпациям
DROP TABLE IF EXISTS load_constant;

CREATE TABLE if not exists load_constant (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  mass FLOAT8 NOT NULL,
  bound_x1 FLOAT8 NOT NULL,
  bound_x2 FLOAT8 NOT NULL,
  category_id INT NOT NULL, -- ID of the cargo_category entry;
  CONSTRAINT load_constant_pk PRIMARY KEY (id),
  CONSTRAINT load_constant_bound_x_check CHECK(bound_x1 < bound_x2),
  CONSTRAINT load_constant_category_fk FOREIGN KEY (category_id) REFERENCES cargo_category (id)
);


-- Координаты и параметры отсеков и цистерн.
DROP TABLE IF EXISTS compartment CASCADE;

CREATE TABLE if not exists compartment (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  space_id INT NOT NULL,
  name_rus TEXT NOT NULL,
  ab_rus TEXT,
  name_engl TEXT,
  ab_engl TEXT,
  active BOOLEAN NOT NULL DEFAULT TRUE, 
  use_max_m_f_s BOOLEAN NOT NULL DEFAULT FALSE, 
  volume FLOAT8,
  volume_max FLOAT8,
  level FLOAT8,
  mass FLOAT8,
  density FLOAT8,
  bound_x1 FLOAT8 NOT NULL,
  bound_x2 FLOAT8 NOT NULL,
  bound_y1 FLOAT8,
  bound_y2 FLOAT8,
  bound_z1 FLOAT8,
  bound_z2 FLOAT8,
  mass_shift_x FLOAT8,
  mass_shift_y FLOAT8,
  mass_shift_z FLOAT8,
  m_f_s_y FLOAT8,
  m_f_s_x FLOAT8,
  max_m_f_s_y FLOAT8,
  max_m_f_s_x FLOAT8,
  grain_moment FLOAT8, 
  svg_paths TEXT,
  category_id INT NOT NULL, -- ID of the cargo_category entry;
  CONSTRAINT compartment_pk PRIMARY KEY (id),
  CONSTRAINT compartment_id_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, space_id),
  CONSTRAINT compartment_name_rus_unique UNIQUE (project_id, ship_id, name_rus),
  CONSTRAINT compartment_name_rus_check CHECK(char_length(name_rus) <= 100),
  CONSTRAINT compartment_ab_rus_unique UNIQUE (project_id, ship_id, ab_rus),
  CONSTRAINT compartment_ab_rus_check CHECK(char_length(ab_rus) <= 50),
  CONSTRAINT compartment_name_engl_unique UNIQUE (project_id, ship_id, name_engl),
  CONSTRAINT compartment_name_engl_check CHECK(char_length(name_engl) <= 100),
  CONSTRAINT compartment_ab_engl_unique UNIQUE (project_id, ship_id, ab_engl),
  CONSTRAINT compartment_ab_engl_check CHECK(char_length(ab_engl) <= 50),
  CONSTRAINT compartment_density_check CHECK(density IS NULL OR density > 0),
  CONSTRAINT compartment_volume_max_check CHECK(volume_max IS NULL OR volume_max > 0),
  CONSTRAINT compartment_mass_check CHECK(mass IS NULL OR mass >= 0),
  CONSTRAINT compartment_volume_check CHECK(volume IS NULL OR volume >= 0),
  CONSTRAINT compartment_bound_x_check CHECK(bound_x1 < bound_x2),
  CONSTRAINT compartment_shift_x_check CHECK(mass_shift_x IS NULL OR (mass_shift_x >= bound_x1 AND mass_shift_x <= bound_x2)),
  CONSTRAINT compartment_category_fk FOREIGN KEY (category_id) REFERENCES cargo_category (id)
);


-- Элементы ЦГБ
DROP TABLE IF EXISTS compartment_curve CASCADE;

CREATE TABLE if not exists compartment_curve (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  space_id INT NOT NULL,
  level FLOAT8 NOT NULL,
  volume FLOAT8 NOT NULL,
  buoyancy_x FLOAT8 NOT NULL,
  buoyancy_y FLOAT8 NOT NULL,
  buoyancy_z FLOAT8 NOT NULL,
  static_moment_x FLOAT8,
  static_moment_y FLOAT8,
  static_moment_z FLOAT8,
  area_vl FLOAT8,
  trans_inertia_moment_self FLOAT8 NOT NULL DEFAULT 0,
  trans_inertia_moment_mov FLOAT8,
  long_inertia_moment_self FLOAT8 NOT NULL DEFAULT 0,
  long_inertia_moment_mov FLOAT8,
  CONSTRAINT compartment_curve_pk PRIMARY KEY (id),
  CONSTRAINT compartment_curve_key_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, space_id, level)
);

-- Разделители и зависимые от них отсеки
DROP TABLE IF EXISTS compartment_separators CASCADE;

CREATE TABLE if not exists compartment_separators (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  compartment_space_id INT NOT NULL,  
  separator1_space_id INT NOT NULL,
  separator2_space_id INT,
  compartment_active BOOLEAN NOT NULL, -- состояние при наличии разделителя отсека
  CONSTRAINT compartment_separators_pk PRIMARY KEY (id),
  CONSTRAINT compartment_separators_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, compartment_space_id, separator1_space_id)
);


-- Координаты и параметры грузов
DROP TABLE IF EXISTS cargo CASCADE;

CREATE TABLE if not exists cargo (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  name TEXT NOT NULL,
  mass FLOAT8,
  timber BOOLEAN NOT NULL DEFAULT FALSE,
  is_on_deck BOOLEAN NOT NULL DEFAULT FALSE, -- Indicator of whether the cargo is on deck or not, true - yes, false - no
  bound_x1 FLOAT8 NOT NULL,
  bound_x2 FLOAT8 NOT NULL,
  bound_y1 FLOAT8,
  bound_y2 FLOAT8,
  bound_z1 FLOAT8,
  bound_z2 FLOAT8,
  mass_shift_x FLOAT8,
  mass_shift_y FLOAT8,
  mass_shift_z FLOAT8,
  horizontal_area FLOAT8,
  horizontal_area_shift_x FLOAT8,
  horizontal_area_shift_y FLOAT8,
  horizontal_area_shift_z FLOAT8,
  vertical_area FLOAT8,
  vertical_area_shift_x FLOAT8,
  vertical_area_shift_y FLOAT8,
  vertical_area_shift_z FLOAT8,
  category_id INT NOT NULL, -- ID of the cargo_category entry;
  CONSTRAINT cargo_pk PRIMARY KEY (id),
  --CONSTRAINT cargo_name_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, name),
  CONSTRAINT cargo_name_check CHECK(char_length(name) <= 50),
  CONSTRAINT cargo_mass_check CHECK(mass IS NULL OR mass >= 0),
  CONSTRAINT cargo_horizontal_area_check CHECK(horizontal_area IS NULL OR horizontal_area >= 0),
  CONSTRAINT cargo_vertical_area_check CHECK(vertical_area IS NULL OR vertical_area >= 0),
  CONSTRAINT cargo_bound_x_check CHECK(bound_x1 < bound_x2), 
  CONSTRAINT cargo_horizontal_area_shift_x_check CHECK(horizontal_area_shift_x IS NULL OR (horizontal_area_shift_x >= bound_x1 AND horizontal_area_shift_x <= bound_x2)),
  CONSTRAINT cargo_vertical_area_shift_x_check CHECK(vertical_area_shift_x IS NULL OR (vertical_area_shift_x >= bound_x1 AND vertical_area_shift_x <= bound_x2)),
  CONSTRAINT cargo_bound_y_check CHECK(bound_y1 IS NULL OR (bound_y1 < bound_y2)), 
  CONSTRAINT cargo_mass_shift_y_check CHECK(mass_shift_y IS NULL OR bound_y1 IS NULL OR (mass_shift_y >= bound_y1 AND mass_shift_y <= bound_y2)),
  CONSTRAINT cargo_horizontal_area_shift_y_check CHECK(horizontal_area_shift_y IS NULL OR bound_y1 IS NULL OR (horizontal_area_shift_y >= bound_y1 AND horizontal_area_shift_y <= bound_y2)),
  CONSTRAINT cargo_vertical_area_shift_y_check CHECK(vertical_area_shift_y IS NULL OR bound_y1 IS NULL OR (vertical_area_shift_y >= bound_y1 AND vertical_area_shift_y <= bound_y2)),
  CONSTRAINT cargo_bound_z_check CHECK(bound_z1 IS NULL OR (bound_z1 < bound_z2)), 
  CONSTRAINT cargo_mass_shift_z_check CHECK(mass_shift_z IS NULL OR bound_z1 IS NULL OR (mass_shift_z >= bound_z1 AND mass_shift_z <= bound_z2)),
  CONSTRAINT cargo_horizontal_area_shift_z_check CHECK(horizontal_area_shift_z IS NULL OR bound_z1 IS NULL OR (horizontal_area_shift_z >= bound_z1 AND horizontal_area_shift_z <= bound_z2)),
  CONSTRAINT cargo_vertical_area_shift_z_check CHECK(vertical_area_shift_z IS NULL OR bound_z1 IS NULL OR (vertical_area_shift_z >= bound_z1 AND vertical_area_shift_z <= bound_z2)),
  CONSTRAINT cargo_category_fk FOREIGN KEY (category_id) REFERENCES cargo_category (id)
);

-- General cargo parameters
DROP TABLE IF EXISTS cargo_general CASCADE;

CREATE TABLE if not exists cargo_general (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  name TEXT NOT NULL,
  mass FLOAT8,
  timber BOOLEAN NOT NULL DEFAULT FALSE,
  bound_x1 FLOAT8,
  bound_x2 FLOAT8,
  bound_y1 FLOAT8,
  bound_y2 FLOAT8,
  bound_z1 FLOAT8,
  bound_z2 FLOAT8,
  mass_shift_x FLOAT8,
  mass_shift_y FLOAT8,
  mass_shift_z FLOAT8,
  mass_shift_x_local FLOAT8 NOT NULL, -- Longitudinal center of gravity in local coordinate system of this cargo;
  mass_shift_y_local FLOAT8 NOT NULL, -- Transverse center of gravity in local coordinate system of this cargo;
  mass_shift_z_local FLOAT8 NOT NULL, -- Vertical center of gravity in local coordinate system of this cargo;
  horizontal_area FLOAT8,
  horizontal_area_shift_x FLOAT8,
  horizontal_area_shift_y FLOAT8,
  horizontal_area_shift_z FLOAT8,
  vertical_area FLOAT8,
  vertical_area_shift_x FLOAT8,
  vertical_area_shift_y FLOAT8,
  vertical_area_shift_z FLOAT8,
  category_id INT NOT NULL, -- ID of the cargo_category entry;
  shape_id INT, -- ID of the shape entry;
  space_id INT, -- ID of the space entry;
  CONSTRAINT cargo_general_pk PRIMARY KEY (id),
  CONSTRAINT cargo_general_name_check CHECK(char_length(name) <= 50),
  CONSTRAINT cargo_general_mass_check CHECK(mass IS NULL OR mass >= 0),
  CONSTRAINT cargo_general_horizontal_area_check CHECK(horizontal_area IS NULL OR horizontal_area >= 0),
  CONSTRAINT cargo_general_vertical_area_check CHECK(vertical_area IS NULL OR vertical_area >= 0),
  CONSTRAINT cargo_general_bound_x_check CHECK(bound_x1 IS NULL OR (bound_x1 < bound_x2)), 
  CONSTRAINT cargo_general_mass_shift_x_check CHECK(mass_shift_x IS NULL OR bound_x1 IS NULL OR (mass_shift_x >= bound_x1 AND mass_shift_x <= bound_x2)),
  CONSTRAINT cargo_general_horizontal_area_shift_x_check CHECK(horizontal_area_shift_x IS NULL OR (horizontal_area_shift_x >= bound_x1 AND horizontal_area_shift_x <= bound_x2)),
  CONSTRAINT cargo_general_vertical_area_shift_x_check CHECK(vertical_area_shift_x IS NULL OR (vertical_area_shift_x >= bound_x1 AND vertical_area_shift_x <= bound_x2)),
  CONSTRAINT cargo_general_bound_y_check CHECK(bound_y1 IS NULL OR (bound_y1 < bound_y2)), 
  CONSTRAINT cargo_general_mass_shift_y_check CHECK(mass_shift_y IS NULL OR bound_y1 IS NULL OR (mass_shift_y >= bound_y1 AND mass_shift_y <= bound_y2)),
  CONSTRAINT cargo_general_horizontal_area_shift_y_check CHECK(horizontal_area_shift_y IS NULL OR bound_y1 IS NULL OR (horizontal_area_shift_y >= bound_y1 AND horizontal_area_shift_y <= bound_y2)),
  CONSTRAINT cargo_general_vertical_area_shift_y_check CHECK(vertical_area_shift_y IS NULL OR bound_y1 IS NULL OR (vertical_area_shift_y >= bound_y1 AND vertical_area_shift_y <= bound_y2)),
  CONSTRAINT cargo_general_bound_z_check CHECK(bound_z1 IS NULL OR (bound_z1 < bound_z2)), 
  CONSTRAINT cargo_general_mass_shift_z_check CHECK(mass_shift_z IS NULL OR bound_z1 IS NULL OR (mass_shift_z >= bound_z1 AND mass_shift_z <= bound_z2)),
  CONSTRAINT cargo_general_horizontal_area_shift_z_check CHECK(horizontal_area_shift_z IS NULL OR bound_z1 IS NULL OR (horizontal_area_shift_z >= bound_z1 AND horizontal_area_shift_z <= bound_z2)),
  CONSTRAINT cargo_general_vertical_area_shift_z_check CHECK(vertical_area_shift_z IS NULL OR bound_z1 IS NULL OR (vertical_area_shift_z >= bound_z1 AND vertical_area_shift_z <= bound_z2)),
  CONSTRAINT cargo_general_location_integrity_check CHECK (
    (
      (shape_id IS NOT NULL AND space_id IS NOT NULL) AND 
      num_nulls(bound_x1, bound_x2, bound_y1, bound_y2, bound_z1, bound_z2, mass_shift_x, mass_shift_y, mass_shift_z) = 0
    )
    OR
    (
      (shape_id IS NULL OR space_id IS NULL) AND
      num_nonnulls(bound_x1, bound_x2, bound_y1, bound_y2, bound_z1, bound_z2, mass_shift_x, mass_shift_y, mass_shift_z) = 0
    )
), -- TODO(nyaneet): remove storage of calculated fields from the database
  CONSTRAINT cargo_general_category_fk FOREIGN KEY (category_id) REFERENCES cargo_category (id),
  CONSTRAINT cargo_general_shape_fk FOREIGN KEY (shape_id) REFERENCES shape (id),
  CONSTRAINT cargo_general_space_fk FOREIGN KEY (space_id) REFERENCES space (id)
);

-- cargo_general, Sofia test examples:
--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Debian 17.2-1.pgdg120+1)
-- Dumped by pg_dump version 17.2 (Debian 17.2-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: shape; Type: TABLE DATA; Schema: public; Owner: test
--

INSERT INTO public.shape (id, type) OVERRIDING SYSTEM VALUE VALUES (1, 'cuboid');
INSERT INTO public.shape (id, type) OVERRIDING SYSTEM VALUE VALUES (2, 'sphere');
INSERT INTO public.shape (id, type) OVERRIDING SYSTEM VALUE VALUES (3, 'cylinder_longitudinal');
INSERT INTO public.shape (id, type) OVERRIDING SYSTEM VALUE VALUES (4, 'cylinder_transverse');
INSERT INTO public.shape (id, type) OVERRIDING SYSTEM VALUE VALUES (5, 'cylinder_vertical');
INSERT INTO public.shape (id, type) OVERRIDING SYSTEM VALUE VALUES (6, 'cuboid');
INSERT INTO public.shape (id, type) OVERRIDING SYSTEM VALUE VALUES (7, 'cuboid');
INSERT INTO public.shape (id, type) OVERRIDING SYSTEM VALUE VALUES (8, 'cuboid');
INSERT INTO public.shape (id, type) OVERRIDING SYSTEM VALUE VALUES (9, 'sphere');
INSERT INTO public.shape (id, type) OVERRIDING SYSTEM VALUE VALUES (10, 'cylinder_vertical');
INSERT INTO public.shape (id, type) OVERRIDING SYSTEM VALUE VALUES (11, 'cylinder_transverse');
INSERT INTO public.shape (id, type) OVERRIDING SYSTEM VALUE VALUES (12, 'cylinder_longitudinal');


--
-- Data for Name: cargo_general; Type: TABLE DATA; Schema: public; Owner: test
--

INSERT INTO public.cargo_general (id, project_id, ship_id, name, mass, timber, bound_x1, bound_x2, bound_y1, bound_y2, bound_z1, bound_z2, mass_shift_x, mass_shift_y, mass_shift_z, mass_shift_x_local, mass_shift_y_local, mass_shift_z_local, horizontal_area, horizontal_area_shift_x, horizontal_area_shift_y, horizontal_area_shift_z, vertical_area, vertical_area_shift_x, vertical_area_shift_y, vertical_area_shift_z, category_id, shape_id, space_id) OVERRIDING SYSTEM VALUE VALUES (2, NULL, 2, 'CubeTest2', 20, false, 4.2, 9.2, -1, 1, 12.38, 14.38, 6.7, 0, 13.38, 2.5, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 7, 1);
INSERT INTO public.cargo_general (id, project_id, ship_id, name, mass, timber, bound_x1, bound_x2, bound_y1, bound_y2, bound_z1, bound_z2, mass_shift_x, mass_shift_y, mass_shift_z, mass_shift_x_local, mass_shift_y_local, mass_shift_z_local, horizontal_area, horizontal_area_shift_x, horizontal_area_shift_y, horizontal_area_shift_z, vertical_area, vertical_area_shift_x, vertical_area_shift_y, vertical_area_shift_z, category_id, shape_id, space_id) OVERRIDING SYSTEM VALUE VALUES (1, NULL, 2, 'CubeTest1', 10, false, 4.2, 6.2, -6.6, -4.6, 12.38, 14.38, 5.2, -5.6, 13.38, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 6, 1);
INSERT INTO public.cargo_general (id, project_id, ship_id, name, mass, timber, bound_x1, bound_x2, bound_y1, bound_y2, bound_z1, bound_z2, mass_shift_x, mass_shift_y, mass_shift_z, mass_shift_x_local, mass_shift_y_local, mass_shift_z_local, horizontal_area, horizontal_area_shift_x, horizontal_area_shift_y, horizontal_area_shift_z, vertical_area, vertical_area_shift_x, vertical_area_shift_y, vertical_area_shift_z, category_id, shape_id, space_id) OVERRIDING SYSTEM VALUE VALUES (4, NULL, 2, 'SphereTest1', 25, false, 19, 25, -3, 3, 12.38, 18.380000000000003, 22, 0, 15.38, 3, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 9, 2);
INSERT INTO public.cargo_general (id, project_id, ship_id, name, mass, timber, bound_x1, bound_x2, bound_y1, bound_y2, bound_z1, bound_z2, mass_shift_x, mass_shift_y, mass_shift_z, mass_shift_x_local, mass_shift_y_local, mass_shift_z_local, horizontal_area, horizontal_area_shift_x, horizontal_area_shift_y, horizontal_area_shift_z, vertical_area, vertical_area_shift_x, vertical_area_shift_y, vertical_area_shift_z, category_id, shape_id, space_id) OVERRIDING SYSTEM VALUE VALUES (7, NULL, 2, 'CylinderLongitudinalTest1', 0, false, 100, 101, -8, -6, 12.38, 14.38, 100.5, -7, 13.38, 0.5, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 12, 2);
INSERT INTO public.cargo_general (id, project_id, ship_id, name, mass, timber, bound_x1, bound_x2, bound_y1, bound_y2, bound_z1, bound_z2, mass_shift_x, mass_shift_y, mass_shift_z, mass_shift_x_local, mass_shift_y_local, mass_shift_z_local, horizontal_area, horizontal_area_shift_x, horizontal_area_shift_y, horizontal_area_shift_z, vertical_area, vertical_area_shift_x, vertical_area_shift_y, vertical_area_shift_z, category_id, shape_id, space_id) OVERRIDING SYSTEM VALUE VALUES (5, NULL, 2, 'CylynderVerticalTest1', 0, false, 40, 46, 2, 8, 12.38, 15.38, 43, 5, 13.88, 3, 3, 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 10, 2);
INSERT INTO public.cargo_general (id, project_id, ship_id, name, mass, timber, bound_x1, bound_x2, bound_y1, bound_y2, bound_z1, bound_z2, mass_shift_x, mass_shift_y, mass_shift_z, mass_shift_x_local, mass_shift_y_local, mass_shift_z_local, horizontal_area, horizontal_area_shift_x, horizontal_area_shift_y, horizontal_area_shift_z, vertical_area, vertical_area_shift_x, vertical_area_shift_y, vertical_area_shift_z, category_id, shape_id, space_id) OVERRIDING SYSTEM VALUE VALUES (6, NULL, 2, 'CylinderTransverseTest1', 0, false, 70, 74, -1, 1, 12.38, 16.380000000000003, 72, 0, 14.38, 2, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 11, 2);
INSERT INTO public.cargo_general (id, project_id, ship_id, name, mass, timber, bound_x1, bound_x2, bound_y1, bound_y2, bound_z1, bound_z2, mass_shift_x, mass_shift_y, mass_shift_z, mass_shift_x_local, mass_shift_y_local, mass_shift_z_local, horizontal_area, horizontal_area_shift_x, horizontal_area_shift_y, horizontal_area_shift_z, vertical_area, vertical_area_shift_x, vertical_area_shift_y, vertical_area_shift_z, category_id, shape_id, space_id) OVERRIDING SYSTEM VALUE VALUES (3, NULL, 2, 'CubeTest3', 10, false, 8.9, 10.9, 4.6, 6.6, 12.38, 14.38, 9.9, 5.6, 13.38, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 8, 1);


--
-- Data for Name: shape_parameter; Type: TABLE DATA; Schema: public; Owner: test
--

INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (1, 1, 'xSize', 8);
INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (2, 1, 'ySize', 4);
INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (3, 1, 'zSize', 2);
INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (4, 2, 'radius', 5);
INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (5, 3, 'length', 8);
INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (6, 3, 'radius', 4);
INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (7, 4, 'length', 8);
INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (8, 4, 'radius', 4);
INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (9, 5, 'length', 8);
INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (10, 5, 'radius', 4);
INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (11, 6, 'xSize', 2);
INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (12, 6, 'ySize', 2);
INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (13, 6, 'zSize', 2);
INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (14, 7, 'xSize', 5);
INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (15, 7, 'ySize', 2);
INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (16, 7, 'zSize', 2);
INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (17, 8, 'xSize', 2);
INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (18, 8, 'ySize', 2);
INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (19, 8, 'zSize', 2);
INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (20, 9, 'radius', 3);
INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (21, 10, 'length', 3);
INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (22, 10, 'radius', 3);
INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (23, 11, 'length', 2);
INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (24, 11, 'radius', 2);
INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (25, 12, 'length', 1);
INSERT INTO public.shape_parameter (id, shape_id, name, value) OVERRIDING SYSTEM VALUE VALUES (26, 12, 'radius', 1);


--
-- Name: cargo_general_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test
--

SELECT pg_catalog.setval('public.cargo_general_id_seq', 7, true);


--
-- Name: shape_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test
--

SELECT pg_catalog.setval('public.shape_id_seq', 12, true);


--
-- Name: shape_parameter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test
--

SELECT pg_catalog.setval('public.shape_parameter_id_seq', 26, true);


--
-- PostgreSQL database dump complete
--
