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

-- Test examples:
-- cuboid
WITH new_shape_id AS (
    INSERT INTO shape (type) VALUES ('cuboid')
    RETURNING id
)
INSERT INTO shape_parameter (shape_id, name, value) VALUES
((SELECT id FROM new_shape_id), 'xSize', 8.0),
((SELECT id FROM new_shape_id), 'ySize', 4.0),
((SELECT id FROM new_shape_id), 'zSize', 2.0);
-- sphere
WITH new_shape_id AS (
    INSERT INTO shape (type) VALUES ('sphere')
    RETURNING id
)
INSERT INTO shape_parameter (shape_id, name, value) VALUES
((SELECT id FROM new_shape_id), 'radius', 5.0);
-- cylinder longitudinal
WITH new_shape_id AS (
    INSERT INTO shape (type) VALUES ('cylinder_longitudinal')
    RETURNING id
)
INSERT INTO shape_parameter (shape_id, name, value) VALUES
((SELECT id FROM new_shape_id), 'xSize', 8.0),
((SELECT id FROM new_shape_id), 'radius', 4.0);