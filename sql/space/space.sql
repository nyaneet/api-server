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
    CONSTRAINT space_pk PRIMARY KEY (id),
    CONSTRAINT space_bounds_x_check CHECK (bound_x1 <= bound_x2),
    CONSTRAINT space_bounds_y_check CHECK (bound_y1 <= bound_y2),
    CONSTRAINT space_bounds_z_check CHECK (bound_z1 <= bound_z2)
);

-- Sofia test examples
INSERT INTO space (
    ship_id,
    project_id,
    space_code,
    name_rus,
    name_engl,
    bound_x1,
    bound_x2,
    bound_y1,
    bound_y2,
    bound_z1,
    bound_z2
) VALUES
(
    2,
    NULL,
    '00-0',
    'Судно внешнее',
    'Ship Bounding',
    -10.0,
    140.0,
    -8.0,
    8.0,
    0.0,
    28.0
),
(
    2,
    NULL,
    '11R.1',
    'Жилой блок',
    'Accommodation',
    4.2,
    10.9,
    -6.6,
    6.6,
    12.38,
    14.95
),
(
    2,
    NULL,
    '10Y-1',
    'Палубная погрузочная зона',
    'Deck loading zone',
    -10.0,
    140.0,
    -8.0,
    8.0,
    28.0,
    28.0
);