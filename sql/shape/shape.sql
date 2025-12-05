--

DROP TABLE IF EXISTS shape CASCADE;

DROP TYPE IF EXISTS shape_type CASCADE;

CREATE TYPE shape_type AS ENUM (
    'cuboid',
    'sphere',
    'cylinder_longitudinal',
    'cylinder_transverse',
    'cylinder_vertical'
);

CREATE TABLE IF NOT EXISTS shape (
    id INT GENERATED ALWAYS AS IDENTITY,
    type shape_type NOT NULL,
    CONSTRAINT shape_pk PRIMARY KEY (id)
);

--

DROP TABLE IF EXISTS shape_parameter CASCADE;

CREATE TABLE IF NOT EXISTS shape_parameter (
    id INT GENERATED ALWAYS AS IDENTITY,
    shape_id INT NOT NULL,
    name TEXT NOT NULL,
    value FLOAT8 NOT NULL,
    CONSTRAINT shape_parameter_pk PRIMARY KEY (id),
    CONSTRAINT shape_parameter_shape_fk FOREIGN KEY (shape_id) REFERENCES shape (id),
    CONSTRAINT shape_parameter_unique UNIQUE(shape_id, name)
);