-- Relation to store containers
DROP TABLE IF EXISTS container CASCADE;

CREATE TABLE
	IF NOT EXISTS container (
		id INT GENERATED ALWAYS AS IDENTITY, -- ID of the container, unique identifier
		project_id INT, -- ID of the project
		ship_id INT NOT NULL, -- ID of the ship
		mass FLOAT8 NOT NULL, -- Mass of the container, measured in tons
		iso_code TEXT NOT NULL, -- Size code of the container (TODO: add ref to ISO)
		category_id INT NOT NULL DEFAULT 13, -- ID of the cargo_category entry; Default value is 13 - 'container_cargo'
		pol_code TEXT, -- TODO
		pod_code TEXT, -- TODO
		CONSTRAINT container_pk PRIMARY KEY (id),
		CONSTRAINT container_category_fk FOREIGN KEY (category_id) REFERENCES cargo_category (id),
		CONSTRAINT container_mass_check CHECK (mass >= 0.0)
	);

-- Relation to store container slots
-- in accordance with [ISO 9711-1](https://www.iso.org/ru/standard/17568.html)
DROP TABLE IF EXISTS container_slot CASCADE;

CREATE TABLE
	IF NOT EXISTS container_slot (
		id INT GENERATED ALWAYS AS IDENTITY, -- ID of the container slot, unique identifier
		container_id INT, -- ID of the container, putted in this slot
		bay_number INT NOT NULL, -- Number of the bay of the slot
		row_number INT NOT NULL, -- Number of the row of the slot
		tier_number INT NOT NULL, -- Number of the tier of the slot
		bound_x1 FLOAT8 NOT NULL, -- Leftmost coordinate of the slot along the longitudinal axis, measured in meters
		bound_x2 FLOAT8 NOT NULL, -- Rightmost coordinate of the slot along the longitudinal axis, measured in meters
		bound_y1 FLOAT8 NOT NULL, -- Leftmost coordinate of the slot along the transversal axis, measured in meters
		bound_y2 FLOAT8 NOT NULL, -- Rightmost coordinate of the slot along the transversal axis, measured in meters
		bound_z1 FLOAT8 NOT NULL, -- Leftmost coordinate of the slot along the vertical axis, measured in meters
		bound_z2 FLOAT8 NOT NULL, -- Rightmost coordinate of the slot along the vertical axis, measured in meters
		min_vertical_separation FLOAT8 NOT NULL, -- Minimum allowed vertical distance between two slots with installed containers, measured in meters
		min_height FLOAT8 NOT NULL, -- Minimum possible value for the leftmost coordinate of the slot along the vertical axis, measured in meters
		max_height FLOAT8 NOT NULL, -- Maximum possible value for the rightmost coordinate of the slot along the vertical axis, measured in meters
		is_active BOOLEAN NOT NULL DEFAULT FALSE, -- Either slot is active or not
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