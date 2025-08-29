DROP TABLE IF EXISTS seakeeping_zones CASCADE;

DROP TYPE IF EXISTS zone_type CASCADE;

CREATE TYPE zone_type AS ENUM ('Parametric', 'Main', 'Broching', 'HighWaves');

CREATE TABLE IF NOT EXISTS seakeeping_zones (
    id SERIAL PRIMARY KEY,
    ship_id INT NOT NULL,
    angle FLOAT NOT NULL,
    speed FLOAT NOT NULL,
    zone_id zone_type NOT NULL,
    CONSTRAINT criterion_values_criterions_id_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id),
    CONSTRAINT unique_angle_speed_zone UNIQUE (angle, speed, zone_id)
);
