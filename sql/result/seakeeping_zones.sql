DROP TABLE IF EXISTS seakeeping_zones CASCADE;

DROP TYPE IF EXISTS zone_type CASCADE;
CREATE TYPE zone_type AS ENUM ('HighWaves', 'Parametric', 'Broaching', 'Main');

DROP TYPE IF EXISTS subzone_type CASCADE;
CREATE TYPE subzone_type AS ENUM ('SubMainZone1', 'SubMainZone2', 'SubParametricZone1', 'SubParametricZone2', 'None');

CREATE TABLE IF NOT EXISTS seakeeping_zones (
    id SERIAL PRIMARY KEY,
    ship_id INT NOT NULL,
    angle FLOAT NOT NULL,
    speed FLOAT NOT NULL,
    zone_id zone_type,
    subzone subzone_type,
    CONSTRAINT unique_angle_speed_zone UNIQUE (angle, speed, zone_id)
);
