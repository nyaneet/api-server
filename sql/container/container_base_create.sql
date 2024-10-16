-- Relation to store containers
DROP TABLE IF EXISTS container CASCADE;

CREATE TABLE
  IF NOT EXISTS container (
    id INT GENERATED ALWAYS AS IDENTITY, -- ID of the container, unique identifier
    project_id INT, -- ID of the project
    ship_id INT NOT NULL, -- ID of the ship
    mass FLOAT8 NOT NULL, -- Mass of the container, measured in tons
    category_id INT NOT NULL DEFAULT 10, -- ID of the cargo_category entry; Default value is 10 - 'cargo'
    CONSTRAINT container_pk PRIMARY KEY (id),
    CONSTRAINT container_category_fk FOREIGN KEY (category_id) REFERENCES cargo_category (id),
    CONSTRAINT container_mass_check CHECK (mass >= 0.0)
  );

INSERT INTO
  container (ship_id, project_id, mass)
VALUES
  (1, NULL, 2.4);

-- Relation to store container slots
-- in accordance with [ISO 9711-1](https://www.iso.org/ru/standard/17568.html)
DROP TABLE IF EXISTS container_slot CASCADE;

CREATE TABLE
  IF NOT EXISTS container_slot (
    id INT GENERATED ALWAYS AS IDENTITY, -- ID of the container slot, unique identifier
    container_id INT, -- ID of the container, putted in this slot
    bay_number INT NOT NULL, -- Number of the bay
    row_number INT NOT NULL, -- Number of the row
    tier_number INT NOT NULL, -- Number of the tier
    bound_x1 FLOAT8 NOT NULL, -- Leftmost coordinate of the slot along the longitudinal axis, measured in meters
    bound_x2 FLOAT8 NOT NULL, -- Rightmost coordinate of the slot along the longitudinal axis, measured in meters
    bound_y1 FLOAT8 NOT NULL, -- Leftmost coordinate of the slot along the transversal axis, measured in meters
    bound_y2 FLOAT8 NOT NULL, -- Rightmost coordinate of the slot along the transversal axis, measured in meters
    bound_z1 FLOAT8 NOT NULL, -- Leftmost coordinate of the slot along the vertical axis, measured in meters
    bound_z2 FLOAT8 NOT NULL, -- Rightmost coordinate of the slot along the vertical axis, measured in meters
    min_vertical_separation FLOAT8 NOT NULL, -- Minimum allowed vertical distance between two slots with installed containers, measured in meters
    max_height FLOAT8 NOT NULL, -- Maximum possible height of the slot, measured in meters
    CONSTRAINT container_slot_pk PRIMARY KEY (id),
    CONSTRAINT container_slot_container_fk FOREIGN KEY (container_id) REFERENCES container (id),
    CONSTRAINT container_slot_unique UNIQUE (container_id, bay_number, row_number, tier_number),
    CONSTRAINT container_slot_bay_check CHECK (
      bay_number >= 1
      AND bay_number <= 99
    ),
    CONSTRAINT container_slot_row_check CHECK (
      row_number >= 0
      AND row_number <= 99
    ),
    CONSTRAINT container_slot_tier_check CHECK (
      tier_number >= 2
      AND tier_number <= 98
    ),
    CONSTRAINT container_slot_bound_x_check CHECK (bound_x1 <= bound_x2),
    CONSTRAINT container_slot_bound_y_check CHECK (bound_y1 <= bound_y2),
    CONSTRAINT container_slot_bound_z_check CHECK (bound_z1 <= bound_z2)
  );
  
  INSERT INTO container_slot (
    container_id,
    bay_number,
    row_number,
    tier_number,
    bound_x1,
    bound_x2,
    bound_y1,
    bound_y2,
    bound_z1,
    bound_z2,
    min_vertical_separation,
    max_height
  )
  VALUES
    (1, 1, 1, 2, 29.16000, 35.21800, 0.01200, 2.45000, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 1, 1, 4, 29.16000, 35.21800, 0.01200, 2.45000, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 1, 1, 82, 27.02800, 33.08600, 0.01200, 2.45000, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 1, 1, 84, 27.02800, 33.08600, 0.01200, 2.45000, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 1, 1, 86, 27.02800, 33.08600, 0.01200, 2.45000, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 1, 2, 2, 29.16000, 35.21800, -2.45000, -0.01200, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 1, 2, 4, 29.16000, 35.21800, -2.45000, -0.01200, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 1, 2, 82, 27.02800, 33.08600, -2.45000, -0.01200, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 1, 2, 84, 27.02800, 33.08600, -2.45000, -0.01200, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 1, 2, 86, 27.02800, 33.08600, -2.45000, -0.01200, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 1, 3, 2, 29.16000, 35.21800, 2.47400, 4.91200, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 1, 3, 4, 29.16000, 35.21800, 2.47400, 4.91200, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 1, 3, 82, 27.02800, 33.08600, 2.47400, 4.91200, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 1, 3, 84, 27.02800, 33.08600, 2.47400, 4.91200, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 1, 3, 86, 27.02800, 33.08600, 2.47400, 4.91200, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 1, 4, 2, 29.16000, 35.21800, -4.91200, -2.47400, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 1, 4, 4, 29.16000, 35.21800, -4.91200, -2.47400, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 1, 4, 82, 27.02800, 33.08600, -4.91200, -2.47400, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 1, 4, 84, 27.02800, 33.08600, -4.91200, -2.47400, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 1, 4, 86, 27.02800, 33.08600, -4.91200, -2.47400, 14.15600, 16.74700, 0.02700, 16.80000),
    (NULL, 2, 1, 2, 23.02700, 35.21700, 0.01200, 2.45000, 0.96500, 3.55600, 0.02700, 8.23000),
    (NULL, 2, 1, 82, 20.89500, 33.08500, 0.01200, 2.45000, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 2, 2, 2, 23.02700, 35.21700, -2.45000, -0.01200, 0.96500, 3.55600, 0.02700, 8.23000),
    (NULL, 2, 2, 82, 20.89500, 33.08500, -2.45000, -0.01200, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 2, 3, 2, 23.02700, 35.21700, 2.47400, 4.91200, 0.96500, 3.55600, 0.02700, 8.23000),
    (NULL, 2, 3, 82, 20.89500, 33.08500, 2.47400, 4.91200, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 2, 4, 2, 23.02700, 35.21700, -4.91200, -2.47400, 0.96500, 3.55600, 0.02700, 8.23000),
    (NULL, 2, 4, 82, 20.89500, 33.08500, -4.91200, -2.47400, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 3, 1, 2, 23.02600, 29.08400, 0.01200, 2.45000, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 3, 1, 4, 23.02600, 29.08400, 0.01200, 2.45000, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 3, 1, 82, 20.89400, 26.95200, 0.01200, 2.45000, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 3, 1, 84, 20.89400, 26.95200, 0.01200, 2.45000, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 3, 1, 86, 20.89400, 26.95200, 0.01200, 2.45000, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 3, 2, 2, 23.02600, 29.08400, -2.45000, -0.01200, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 3, 2, 4, 23.02600, 29.08400, -2.45000, -0.01200, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 3, 2, 82, 20.89400, 26.95200, -2.45000, -0.01200, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 3, 2, 84, 20.89400, 26.95200, -2.45000, -0.01200, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 3, 2, 86, 20.89400, 26.95200, -2.45000, -0.01200, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 3, 3, 2, 23.02600, 29.08400, 2.47400, 4.91200, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 3, 3, 4, 23.02600, 29.08400, 2.47400, 4.91200, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 3, 3, 82, 20.89400, 26.95200, 2.47400, 4.91200, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 3, 3, 84, 20.89400, 26.95200, 2.47400, 4.91200, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 3, 3, 86, 20.89400, 26.95200, 2.47400, 4.91200, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 3, 4, 2, 23.02600, 29.08400, -4.91200, -2.47400, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 3, 4, 4, 23.02600, 29.08400, -4.91200, -2.47400, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 3, 4, 82, 20.89400, 26.95200, -4.91200, -2.47400, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 3, 4, 84, 20.89400, 26.95200, -4.91200, -2.47400, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 3, 4, 86, 20.89400, 26.95200, -4.91200, -2.47400, 14.15600, 16.74700, 0.02700, 16.80000),
    (NULL, 4, 1, 2, 16.89300, 29.08300, 0.01200, 2.45000, 0.96500, 3.55600, 0.02700, 8.23000),
    (NULL, 4, 1, 82, 14.76100, 26.95100, 0.01200, 2.45000, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 4, 2, 2, 16.89300, 29.08300, -2.45000, -0.01200, 0.96500, 3.55600, 0.02700, 8.23000),
    (NULL, 4, 2, 82, 14.76100, 26.95100, -2.45000, -0.01200, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 4, 3, 2, 16.89300, 29.08300, 2.47400, 4.91200, 0.96500, 3.55600, 0.02700, 8.23000),
    (NULL, 4, 3, 82, 14.76100, 26.95100, 2.47400, 4.91200, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 4, 4, 2, 16.89300, 29.08300, -4.91200, -2.47400, 0.96500, 3.55600, 0.02700, 8.23000),
    (NULL, 4, 4, 82, 14.76100, 26.95100, -4.91200, -2.47400, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 5, 1, 2, 16.89200, 22.95000, 0.01200, 2.45000, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 5, 1, 4, 16.89200, 22.95000, 0.01200, 2.45000, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 5, 1, 82, 14.76000, 20.81800, 0.01200, 2.45000, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 5, 1, 84, 14.76000, 20.81800, 0.01200, 2.45000, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 5, 1, 86, 14.76000, 20.81800, 0.01200, 2.45000, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 5, 2, 2, 16.89200, 22.95000, -2.45000, -0.01200, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 5, 2, 4, 16.89200, 22.95000, -2.45000, -0.01200, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 5, 2, 82, 14.76000, 20.81800, -2.45000, -0.01200, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 5, 2, 84, 14.76000, 20.81800, -2.45000, -0.01200, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 5, 2, 86, 14.76000, 20.81800, -2.45000, -0.01200, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 5, 3, 2, 16.89200, 22.95000, 2.47400, 4.91200, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 5, 3, 4, 16.89200, 22.95000, 2.47400, 4.91200, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 5, 3, 82, 14.76000, 20.81800, 2.47400, 4.91200, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 5, 3, 84, 14.76000, 20.81800, 2.47400, 4.91200, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 5, 3, 86, 14.76000, 20.81800, 2.47400, 4.91200, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 5, 4, 2, 16.89200, 22.95000, -4.91200, -2.47400, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 5, 4, 4, 16.89200, 22.95000, -4.91200, -2.47400, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 5, 4, 82, 14.76000, 20.81800, -4.91200, -2.47400, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 5, 4, 84, 14.76000, 20.81800, -4.91200, -2.47400, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 5, 4, 86, 14.76000, 20.81800, -4.91200, -2.47400, 14.15600, 16.74700, 0.02700, 16.80000),
    (NULL, 6, 1, 2, 10.75900, 22.94900, 0.01200, 2.45000, 0.96500, 3.55600, 0.02700, 6.63000),
    (NULL, 6, 1, 82, 8.62700, 20.81700, 0.01200, 2.45000, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 6, 2, 2, 10.75900, 22.94900, -2.45000, -0.01200, 0.96500, 3.55600, 0.02700, 6.63000),
    (NULL, 6, 2, 82, 8.62700, 20.81700, -2.45000, -0.01200, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 6, 3, 2, 10.75900, 22.94900, 2.47400, 4.91200, 0.96500, 3.55600, 0.02700, 6.63000),
    (NULL, 6, 3, 82, 8.62700, 20.81700, 2.47400, 4.91200, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 6, 4, 2, 10.75900, 22.94900, -4.91200, -2.47400, 0.96500, 3.55600, 0.02700, 6.63000),
    (NULL, 6, 4, 82, 8.62700, 20.81700, -4.91200, -2.47400, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 7, 1, 2, 10.75800, 16.81600, 0.01200, 2.45000, 0.96500, 3.55600, 0.02700, 6.63000),
    (1, 7, 1, 4, 10.75800, 16.81600, 0.01200, 2.45000, 3.58300, 6.17400, 0.02700, 6.63000),
    (1, 7, 1, 82, 8.62600, 14.68400, 0.01200, 2.45000, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 7, 1, 84, 8.62600, 14.68400, 0.01200, 2.45000, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 7, 1, 86, 8.62600, 14.68400, 0.01200, 2.45000, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 7, 2, 2, 10.75800, 16.81600, -2.45000, -0.01200, 0.96500, 3.55600, 0.02700, 6.63000),
    (1, 7, 2, 4, 10.75800, 16.81600, -2.45000, -0.01200, 3.58300, 6.17400, 0.02700, 6.63000),
    (1, 7, 2, 82, 8.62600, 14.68400, -2.45000, -0.01200, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 7, 2, 84, 8.62600, 14.68400, -2.45000, -0.01200, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 7, 2, 86, 8.62600, 14.68400, -2.45000, -0.01200, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 7, 3, 2, 10.75800, 16.81600, 2.47400, 4.91200, 0.96500, 3.55600, 0.02700, 6.63000),
    (1, 7, 3, 4, 10.75800, 16.81600, 2.47400, 4.91200, 3.58300, 6.17400, 0.02700, 6.63000),
    (1, 7, 3, 82, 8.62600, 14.68400, 2.47400, 4.91200, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 7, 3, 84, 8.62600, 14.68400, 2.47400, 4.91200, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 7, 3, 86, 8.62600, 14.68400, 2.47400, 4.91200, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 7, 4, 2, 10.75800, 16.81600, -4.91200, -2.47400, 0.96500, 3.55600, 0.02700, 6.63000),
    (1, 7, 4, 4, 10.75800, 16.81600, -4.91200, -2.47400, 3.58300, 6.17400, 0.02700, 6.63000),
    (1, 7, 4, 82, 8.62600, 14.68400, -4.91200, -2.47400, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 7, 4, 84, 8.62600, 14.68400, -4.91200, -2.47400, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 7, 4, 86, 8.62600, 14.68400, -4.91200, -2.47400, 14.15600, 16.74700, 0.02700, 16.80000),
    (NULL, 8, 1, 2, 4.62500, 16.81500, 0.01200, 2.45000, 0.96500, 3.55600, 0.02700, 6.63000),
    (NULL, 8, 1, 82, 2.49300, 14.68300, 0.01200, 2.45000, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 8, 2, 2, 4.62500, 16.81500, -2.45000, -0.01200, 0.96500, 3.55600, 0.02700, 6.63000),
    (NULL, 8, 2, 82, 2.49300, 14.68300, -2.45000, -0.01200, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 8, 3, 2, 4.62500, 16.81500, 2.47400, 4.91200, 0.96500, 3.55600, 0.02700, 6.63000),
    (NULL, 8, 3, 82, 2.49300, 14.68300, 2.47400, 4.91200, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 8, 4, 2, 4.62500, 16.81500, -4.91200, -2.47400, 0.96500, 3.55600, 0.02700, 6.63000),
    (NULL, 8, 4, 82, 2.49300, 14.68300, -4.91200, -2.47400, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 9, 1, 2, 4.62400, 10.68200, 0.01200, 2.45000, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 9, 1, 4, 4.62400, 10.68200, 0.01200, 2.45000, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 9, 1, 82, 2.49200, 8.55000, 0.01200, 2.45000, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 9, 1, 84, 2.49200, 8.55000, 0.01200, 2.45000, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 9, 1, 86, 2.49200, 8.55000, 0.01200, 2.45000, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 9, 2, 2, 4.62400, 10.68200, -2.45000, -0.01200, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 9, 2, 4, 4.62400, 10.68200, -2.45000, -0.01200, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 9, 2, 82, 2.49200, 8.55000, -2.45000, -0.01200, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 9, 2, 84, 2.49200, 8.55000, -2.45000, -0.01200, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 9, 2, 86, 2.49200, 8.55000, -2.45000, -0.01200, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 9, 3, 2, 4.62400, 10.68200, 2.47400, 4.91200, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 9, 3, 4, 4.62400, 10.68200, 2.47400, 4.91200, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 9, 3, 82, 2.49200, 8.55000, 2.47400, 4.91200, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 9, 3, 84, 2.49200, 8.55000, 2.47400, 4.91200, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 9, 3, 86, 2.49200, 8.55000, 2.47400, 4.91200, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 9, 4, 2, 4.62400, 10.68200, -4.91200, -2.47400, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 9, 4, 4, 4.62400, 10.68200, -4.91200, -2.47400, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 9, 4, 82, 2.49200, 8.55000, -4.91200, -2.47400, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 9, 4, 84, 2.49200, 8.55000, -4.91200, -2.47400, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 9, 4, 86, 2.49200, 8.55000, -4.91200, -2.47400, 14.15600, 16.74700, 0.02700, 16.80000),
    (NULL, 10, 1, 2, -1.50900, 10.68100, 0.01200, 2.45000, 0.96500, 3.55600, 0.02700, 8.23000),
    (NULL, 10, 1, 82, -3.64100, 8.54900, 0.01200, 2.45000, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 10, 2, 2, -1.50900, 10.68100, -2.45000, -0.01200, 0.96500, 3.55600, 0.02700, 8.23000),
    (NULL, 10, 2, 82, -3.64100, 8.54900, -2.45000, -0.01200, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 10, 3, 2, -1.50900, 10.68100, 2.47400, 4.91200, 0.96500, 3.55600, 0.02700, 8.23000),
    (NULL, 10, 3, 82, -3.64100, 8.54900, 2.47400, 4.91200, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 10, 4, 2, -1.50900, 10.68100, -4.91200, -2.47400, 0.96500, 3.55600, 0.02700, 8.23000),
    (NULL, 10, 4, 82, -3.64100, 8.54900, -4.91200, -2.47400, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 11, 1, 2, -1.51000, 4.54800, 0.01200, 2.45000, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 11, 1, 4, -1.51000, 4.54800, 0.01200, 2.45000, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 11, 1, 82, -3.64200, 2.41600, 0.01200, 2.45000, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 11, 1, 84, -3.64200, 2.41600, 0.01200, 2.45000, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 11, 1, 86, -3.64200, 2.41600, 0.01200, 2.45000, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 11, 2, 2, -1.51000, 4.54800, -2.45000, -0.01200, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 11, 2, 4, -1.51000, 4.54800, -2.45000, -0.01200, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 11, 2, 82, -3.64200, 2.41600, -2.45000, -0.01200, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 11, 2, 84, -3.64200, 2.41600, -2.45000, -0.01200, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 11, 2, 86, -3.64200, 2.41600, -2.45000, -0.01200, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 11, 3, 2, -1.51000, 4.54800, 2.47400, 4.91200, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 11, 3, 4, -1.51000, 4.54800, 2.47400, 4.91200, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 11, 3, 82, -3.64200, 2.41600, 2.47400, 4.91200, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 11, 3, 84, -3.64200, 2.41600, 2.47400, 4.91200, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 11, 3, 86, -3.64200, 2.41600, 2.47400, 4.91200, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 11, 4, 2, -1.51000, 4.54800, -4.91200, -2.47400, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 11, 4, 4, -1.51000, 4.54800, -4.91200, -2.47400, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 11, 4, 82, -3.64200, 2.41600, -4.91200, -2.47400, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 11, 4, 84, -3.64200, 2.41600, -4.91200, -2.47400, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 11, 4, 86, -3.64200, 2.41600, -4.91200, -2.47400, 14.15600, 16.74700, 0.02700, 16.80000),
    (NULL, 12, 1, 2, -7.64300, 4.54700, 0.01200, 2.45000, 0.96500, 3.55600, 0.02700, 6.63000),
    (NULL, 12, 1, 82, -9.77500, 2.41500, 0.01200, 2.45000, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 12, 2, 2, -7.64300, 4.54700, -2.45000, -0.01200, 0.96500, 3.55600, 0.02700, 6.63000),
    (NULL, 12, 2, 82, -9.77500, 2.41500, -2.45000, -0.01200, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 12, 3, 2, -7.64300, 4.54700, 2.47400, 4.91200, 0.96500, 3.55600, 0.02700, 6.63000),
    (NULL, 12, 3, 82, -9.77500, 2.41500, 2.47400, 4.91200, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 12, 4, 2, -7.64300, 4.54700, -4.91200, -2.47400, 0.96500, 3.55600, 0.02700, 6.63000),
    (NULL, 12, 4, 82, -9.77500, 2.41500, -4.91200, -2.47400, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 13, 1, 2, -7.64400, -1.58600, 0.01200, 2.45000, 0.96500, 3.55600, 0.02700, 6.63000),
    (1, 13, 1, 4, -7.64400, -1.58600, 0.01200, 2.45000, 3.58300, 6.17400, 0.02700, 6.63000),
    (1, 13, 1, 82, -9.77600, -3.71800, 0.01200, 2.45000, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 13, 1, 84, -9.77600, -3.71800, 0.01200, 2.45000, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 13, 1, 86, -9.77600, -3.71800, 0.01200, 2.45000, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 13, 2, 2, -7.64400, -1.58600, -2.45000, -0.01200, 0.96500, 3.55600, 0.02700, 6.63000),
    (1, 13, 2, 4, -7.64400, -1.58600, -2.45000, -0.01200, 3.58300, 6.17400, 0.02700, 6.63000),
    (1, 13, 2, 82, -9.77600, -3.71800, -2.45000, -0.01200, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 13, 2, 84, -9.77600, -3.71800, -2.45000, -0.01200, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 13, 2, 86, -9.77600, -3.71800, -2.45000, -0.01200, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 13, 3, 2, -7.64400, -1.58600, 2.47400, 4.91200, 0.96500, 3.55600, 0.02700, 6.63000),
    (1, 13, 3, 4, -7.64400, -1.58600, 2.47400, 4.91200, 3.58300, 6.17400, 0.02700, 6.63000),
    (1, 13, 3, 82, -9.77600, -3.71800, 2.47400, 4.91200, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 13, 3, 84, -9.77600, -3.71800, 2.47400, 4.91200, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 13, 3, 86, -9.77600, -3.71800, 2.47400, 4.91200, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 13, 4, 2, -7.64400, -1.58600, -4.91200, -2.47400, 0.96500, 3.55600, 0.02700, 6.63000),
    (1, 13, 4, 4, -7.64400, -1.58600, -4.91200, -2.47400, 3.58300, 6.17400, 0.02700, 6.63000),
    (1, 13, 4, 82, -9.77600, -3.71800, -4.91200, -2.47400, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 13, 4, 84, -9.77600, -3.71800, -4.91200, -2.47400, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 13, 4, 86, -9.77600, -3.71800, -4.91200, -2.47400, 14.15600, 16.74700, 0.02700, 16.80000),
    (NULL, 14, 1, 2, -13.77700, -1.58700, 0.01200, 2.45000, 0.96500, 3.55600, 0.02700, 6.63000),
    (NULL, 14, 1, 82, -15.90900, -3.71900, 0.01200, 2.45000, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 14, 2, 2, -13.77700, -1.58700, -2.45000, -0.01200, 0.96500, 3.55600, 0.02700, 6.63000),
    (NULL, 14, 2, 82, -15.90900, -3.71900, -2.45000, -0.01200, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 14, 3, 2, -13.77700, -1.58700, 2.47400, 4.91200, 0.96500, 3.55600, 0.02700, 6.63000),
    (NULL, 14, 3, 82, -15.90900, -3.71900, 2.47400, 4.91200, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 14, 4, 2, -13.77700, -1.58700, -4.91200, -2.47400, 0.96500, 3.55600, 0.02700, 6.63000),
    (NULL, 14, 4, 82, -15.90900, -3.71900, -4.91200, -2.47400, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 15, 1, 2, -13.77800, -7.72000, 0.01200, 2.45000, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 15, 1, 4, -13.77800, -7.72000, 0.01200, 2.45000, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 15, 1, 82, -15.91000, -9.85200, 0.01200, 2.45000, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 15, 1, 84, -15.91000, -9.85200, 0.01200, 2.45000, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 15, 1, 86, -15.91000, -9.85200, 0.01200, 2.45000, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 15, 2, 2, -13.77800, -7.72000, -2.45000, -0.01200, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 15, 2, 4, -13.77800, -7.72000, -2.45000, -0.01200, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 15, 2, 82, -15.91000, -9.85200, -2.45000, -0.01200, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 15, 2, 84, -15.91000, -9.85200, -2.45000, -0.01200, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 15, 2, 86, -15.91000, -9.85200, -2.45000, -0.01200, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 15, 3, 2, -13.77800, -7.72000, 2.47400, 4.91200, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 15, 3, 4, -13.77800, -7.72000, 2.47400, 4.91200, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 15, 3, 82, -15.91000, -9.85200, 2.47400, 4.91200, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 15, 3, 84, -15.91000, -9.85200, 2.47400, 4.91200, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 15, 3, 86, -15.91000, -9.85200, 2.47400, 4.91200, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 15, 4, 2, -13.77800, -7.72000, -4.91200, -2.47400, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 15, 4, 4, -13.77800, -7.72000, -4.91200, -2.47400, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 15, 4, 82, -15.91000, -9.85200, -4.91200, -2.47400, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 15, 4, 84, -15.91000, -9.85200, -4.91200, -2.47400, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 15, 4, 86, -15.91000, -9.85200, -4.91200, -2.47400, 14.15600, 16.74700, 0.02700, 16.80000),
    (NULL, 16, 1, 2, -19.91100, -7.72100, 0.01200, 2.45000, 0.96500, 3.55600, 0.02700, 8.23000),
    (NULL, 16, 1, 82, -22.04300, -9.85300, 0.01200, 2.45000, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 16, 2, 2, -19.91100, -7.72100, -2.45000, -0.01200, 0.96500, 3.55600, 0.02700, 8.23000),
    (NULL, 16, 2, 82, -22.04300, -9.85300, -2.45000, -0.01200, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 16, 3, 2, -19.91100, -7.72100, 2.47400, 4.91200, 0.96500, 3.55600, 0.02700, 8.23000),
    (NULL, 16, 3, 82, -22.04300, -9.85300, 2.47400, 4.91200, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 16, 4, 2, -19.91100, -7.72100, -4.91200, -2.47400, 0.96500, 3.55600, 0.02700, 8.23000),
    (NULL, 16, 4, 82, -22.04300, -9.85300, -4.91200, -2.47400, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 17, 1, 2, -19.91200, -13.85400, 0.01200, 2.45000, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 17, 1, 4, -19.91200, -13.85400, 0.01200, 2.45000, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 17, 1, 82, -22.04400, -15.98600, 0.01200, 2.45000, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 17, 1, 84, -22.04400, -15.98600, 0.01200, 2.45000, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 17, 1, 86, -22.04400, -15.98600, 0.01200, 2.45000, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 17, 2, 2, -19.91200, -13.85400, -2.45000, -0.01200, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 17, 2, 4, -19.91200, -13.85400, -2.45000, -0.01200, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 17, 2, 82, -22.04400, -15.98600, -2.45000, -0.01200, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 17, 2, 84, -22.04400, -15.98600, -2.45000, -0.01200, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 17, 2, 86, -22.04400, -15.98600, -2.45000, -0.01200, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 17, 3, 2, -19.91200, -13.85400, 2.47400, 4.91200, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 17, 3, 4, -19.91200, -13.85400, 2.47400, 4.91200, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 17, 3, 82, -22.04400, -15.98600, 2.47400, 4.91200, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 17, 3, 84, -22.04400, -15.98600, 2.47400, 4.91200, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 17, 3, 86, -22.04400, -15.98600, 2.47400, 4.91200, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 17, 4, 2, -19.91200, -13.85400, -4.91200, -2.47400, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 17, 4, 4, -19.91200, -13.85400, -4.91200, -2.47400, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 17, 4, 82, -22.04400, -15.98600, -4.91200, -2.47400, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 17, 4, 84, -22.04400, -15.98600, -4.91200, -2.47400, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 17, 4, 86, -22.04400, -15.98600, -4.91200, -2.47400, 14.15600, 16.74700, 0.02700, 16.80000),
    (NULL, 18, 1, 2, -26.04500, -13.85500, 0.01200, 2.45000, 0.96500, 3.55600, 0.02700, 6.63000),
    (NULL, 18, 1, 82, -28.17700, -15.98700, 0.01200, 2.45000, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 18, 2, 2, -26.04500, -13.85500, -2.45000, -0.01200, 0.96500, 3.55600, 0.02700, 6.63000),
    (NULL, 18, 2, 82, -28.17700, -15.98700, -2.45000, -0.01200, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 18, 3, 2, -26.04500, -13.85500, 2.47400, 4.91200, 0.96500, 3.55600, 0.02700, 6.63000),
    (NULL, 18, 3, 82, -28.17700, -15.98700, 2.47400, 4.91200, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 18, 4, 2, -26.04500, -13.85500, -4.91200, -2.47400, 0.96500, 3.55600, 0.02700, 6.63000),
    (NULL, 18, 4, 82, -28.17700, -15.98700, -4.91200, -2.47400, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 19, 1, 2, -26.04600, -19.98800, 0.01200, 2.45000, 0.96500, 3.55600, 0.02700, 6.63000),
    (1, 19, 1, 4, -26.04600, -19.98800, 0.01200, 2.45000, 3.58300, 6.17400, 0.02700, 6.63000),
    (1, 19, 1, 82, -28.17800, -22.12000, 0.01200, 2.45000, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 19, 1, 84, -28.17800, -22.12000, 0.01200, 2.45000, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 19, 1, 86, -28.17800, -22.12000, 0.01200, 2.45000, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 19, 2, 2, -26.04600, -19.98800, -2.45000, -0.01200, 0.96500, 3.55600, 0.02700, 6.63000),
    (1, 19, 2, 4, -26.04600, -19.98800, -2.45000, -0.01200, 3.58300, 6.17400, 0.02700, 6.63000),
    (1, 19, 2, 82, -28.17800, -22.12000, -2.45000, -0.01200, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 19, 2, 84, -28.17800, -22.12000, -2.45000, -0.01200, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 19, 2, 86, -28.17800, -22.12000, -2.45000, -0.01200, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 19, 3, 2, -26.04600, -19.98800, 2.47400, 4.91200, 0.96500, 3.55600, 0.02700, 6.63000),
    (1, 19, 3, 4, -26.04600, -19.98800, 2.47400, 4.91200, 3.58300, 6.17400, 0.02700, 6.63000),
    (1, 19, 3, 82, -28.17800, -22.12000, 2.47400, 4.91200, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 19, 3, 84, -28.17800, -22.12000, 2.47400, 4.91200, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 19, 3, 86, -28.17800, -22.12000, 2.47400, 4.91200, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 19, 4, 2, -26.04600, -19.98800, -4.91200, -2.47400, 0.96500, 3.55600, 0.02700, 6.63000),
    (1, 19, 4, 4, -26.04600, -19.98800, -4.91200, -2.47400, 3.58300, 6.17400, 0.02700, 6.63000),
    (1, 19, 4, 82, -28.17800, -22.12000, -4.91200, -2.47400, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 19, 4, 84, -28.17800, -22.12000, -4.91200, -2.47400, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 19, 4, 86, -28.17800, -22.12000, -4.91200, -2.47400, 14.15600, 16.74700, 0.02700, 16.80000),
    (NULL, 20, 1, 2, -32.17900, -19.98900, 0.01200, 2.45000, 0.96500, 3.55600, 0.02700, 6.63000),
    (NULL, 20, 1, 82, -34.31100, -22.12100, 0.01200, 2.45000, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 20, 2, 2, -32.17900, -19.98900, -2.45000, -0.01200, 0.96500, 3.55600, 0.02700, 6.63000),
    (NULL, 20, 2, 82, -34.31100, -22.12100, -2.45000, -0.01200, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 20, 3, 2, -32.17900, -19.98900, 2.47400, 4.91200, 0.96500, 3.55600, 0.02700, 6.63000),
    (NULL, 20, 3, 82, -34.31100, -22.12100, 2.47400, 4.91200, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 20, 4, 2, -32.17900, -19.98900, -4.91200, -2.47400, 0.96500, 3.55600, 0.02700, 6.63000),
    (NULL, 20, 4, 82, -34.31100, -22.12100, -4.91200, -2.47400, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 21, 1, 2, -32.18000, -26.12200, 0.01200, 2.45000, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 21, 1, 4, -32.18000, -26.12200, 0.01200, 2.45000, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 21, 1, 82, -34.31200, -28.25400, 0.01200, 2.45000, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 21, 1, 84, -34.31200, -28.25400, 0.01200, 2.45000, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 21, 1, 86, -34.31200, -28.25400, 0.01200, 2.45000, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 21, 2, 2, -32.18000, -26.12200, -2.45000, -0.01200, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 21, 2, 4, -32.18000, -26.12200, -2.45000, -0.01200, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 21, 2, 82, -34.31200, -28.25400, -2.45000, -0.01200, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 21, 2, 84, -34.31200, -28.25400, -2.45000, -0.01200, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 21, 2, 86, -34.31200, -28.25400, -2.45000, -0.01200, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 21, 3, 2, -32.18000, -26.12200, 2.47400, 4.91200, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 21, 3, 4, -32.18000, -26.12200, 2.47400, 4.91200, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 21, 3, 82, -34.31200, -28.25400, 2.47400, 4.91200, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 21, 3, 84, -34.31200, -28.25400, 2.47400, 4.91200, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 21, 3, 86, -34.31200, -28.25400, 2.47400, 4.91200, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 21, 4, 2, -32.18000, -26.12200, -4.91200, -2.47400, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 21, 4, 4, -32.18000, -26.12200, -4.91200, -2.47400, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 21, 4, 82, -34.31200, -28.25400, -4.91200, -2.47400, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 21, 4, 84, -34.31200, -28.25400, -4.91200, -2.47400, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 21, 4, 86, -34.31200, -28.25400, -4.91200, -2.47400, 14.15600, 16.74700, 0.02700, 16.80000),
    (NULL, 22, 1, 2, -38.31300, -26.12300, 0.01200, 2.45000, 0.96500, 3.55600, 0.02700, 8.23000),
    (NULL, 22, 1, 82, -40.44500, -28.25500, 0.01200, 2.45000, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 22, 2, 2, -38.31300, -26.12300, -2.45000, -0.01200, 0.96500, 3.55600, 0.02700, 8.23000),
    (NULL, 22, 2, 82, -40.44500, -28.25500, -2.45000, -0.01200, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 22, 3, 2, -38.31300, -26.12300, 2.47400, 4.91200, 0.96500, 3.55600, 0.02700, 8.23000),
    (NULL, 22, 3, 82, -40.44500, -28.25500, 2.47400, 4.91200, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 22, 4, 2, -38.31300, -26.12300, -4.91200, -2.47400, 0.96500, 3.55600, 0.02700, 8.23000),
    (NULL, 22, 4, 82, -40.44500, -28.25500, -4.91200, -2.47400, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 23, 1, 2, -38.31400, -32.25600, 0.01200, 2.45000, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 23, 1, 4, -38.31400, -32.25600, 0.01200, 2.45000, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 23, 1, 82, -40.44600, -34.38800, 0.01200, 2.45000, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 23, 1, 84, -40.44600, -34.38800, 0.01200, 2.45000, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 23, 1, 86, -40.44600, -34.38800, 0.01200, 2.45000, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 23, 2, 2, -38.31400, -32.25600, -2.45000, -0.01200, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 23, 2, 4, -38.31400, -32.25600, -2.45000, -0.01200, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 23, 2, 82, -40.44600, -34.38800, -2.45000, -0.01200, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 23, 2, 84, -40.44600, -34.38800, -2.45000, -0.01200, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 23, 2, 86, -40.44600, -34.38800, -2.45000, -0.01200, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 23, 3, 2, -38.31400, -32.25600, 2.47400, 4.91200, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 23, 3, 4, -38.31400, -32.25600, 2.47400, 4.91200, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 23, 3, 82, -40.44600, -34.38800, 2.47400, 4.91200, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 23, 3, 84, -40.44600, -34.38800, 2.47400, 4.91200, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 23, 3, 86, -40.44600, -34.38800, 2.47400, 4.91200, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 23, 4, 2, -38.31400, -32.25600, -4.91200, -2.47400, 0.96500, 3.55600, 0.02700, 8.23000),
    (1, 23, 4, 4, -38.31400, -32.25600, -4.91200, -2.47400, 3.58300, 6.17400, 0.02700, 8.23000),
    (1, 23, 4, 82, -40.44600, -34.38800, -4.91200, -2.47400, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 23, 4, 84, -40.44600, -34.38800, -4.91200, -2.47400, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 23, 4, 86, -40.44600, -34.38800, -4.91200, -2.47400, 14.15600, 16.74700, 0.02700, 16.80000),
    (NULL, 24, 1, 82, -46.57900, -34.38900, 0.01200, 2.45000, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 24, 2, 82, -46.57900, -34.38900, -2.45000, -0.01200, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 24, 3, 82, -46.57900, -34.38900, 2.47400, 4.91200, 8.92000, 11.51100, 0.02700, 16.80000),
    (NULL, 24, 4, 82, -46.57900, -34.38900, -4.91200, -2.47400, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 25, 1, 82, -46.58000, -40.52200, 0.01200, 2.45000, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 25, 1, 84, -46.58000, -40.52200, 0.01200, 2.45000, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 25, 1, 86, -46.58000, -40.52200, 0.01200, 2.45000, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 25, 2, 82, -46.58000, -40.52200, -2.45000, -0.01200, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 25, 2, 84, -46.58000, -40.52200, -2.45000, -0.01200, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 25, 2, 86, -46.58000, -40.52200, -2.45000, -0.01200, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 25, 3, 82, -46.58000, -40.52200, 2.47400, 4.91200, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 25, 3, 84, -46.58000, -40.52200, 2.47400, 4.91200, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 25, 3, 86, -46.58000, -40.52200, 2.47400, 4.91200, 14.15600, 16.74700, 0.02700, 16.80000),
    (1, 25, 4, 82, -46.58000, -40.52200, -4.91200, -2.47400, 8.92000, 11.51100, 0.02700, 16.80000),
    (1, 25, 4, 84, -46.58000, -40.52200, -4.91200, -2.47400, 11.53800, 14.12900, 0.02700, 16.80000),
    (1, 25, 4, 86, -46.58000, -40.52200, -4.91200, -2.47400, 14.15600, 16.74700, 0.02700, 16.80000);