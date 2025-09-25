DROP TABLE IF EXISTS seakeeping_zones CASCADE;

CREATE TABLE IF NOT EXISTS seakeeping_zones (
    id SERIAL PRIMARY KEY,
    ship_id INT NOT NULL,
    angle FLOAT NOT NULL,
    speed FLOAT NOT NULL,
    zone_id VARCHAR(20) NOT NULL CHECK (zone_id IN ('HighWaves', 'Parametric', 'Broching', 'Main')),
    CONSTRAINT unique_angle_speed_zone UNIQUE (angle, speed, zone_id)
);
