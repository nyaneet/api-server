--
DROP TABLE IF EXISTS space CASCADE;

CREATE TABLE IF NOT EXISTS space (
    id INT GENERATED ALWAYS AS IDENTITY,
    ship_id INT NOT NULL,
    project_id INT,
    space_code TEXT NOT NULL,
    name_rus TEXT NOT NULL,
    name_engl TEXT NOT NULL,
    bound_x1 FLOAT8 NOT NULL,
    bound_x2 FLOAT8 NOT NULL,
    bound_y1 FLOAT8 NOT NULL,
    bound_y2 FLOAT8 NOT NULL,
    bound_z1 FLOAT8 NOT NULL,
    bound_z2 FLOAT8 NOT NULL,
    is_deck BOOLEAN NOT NULL DEFAULT FALSE, -- Indicator of whether this space is deck or not
    CONSTRAINT space_pk PRIMARY KEY (id),
    CONSTRAINT space_bounds_x_check CHECK (bound_x1 <= bound_x2),
    CONSTRAINT space_bounds_y_check CHECK (bound_y1 <= bound_y2),
    CONSTRAINT space_bounds_z_check CHECK (bound_z1 <= bound_z2)
);
