DROP TABLE IF EXISTS seakeeping_zones_status CASCADE;

CREATE TABLE IF NOT EXISTS seakeeping_zones_status (
    id SERIAL PRIMARY KEY,
    ship_id INT NOT NULL,
    zone_id VARCHAR(20) NOT NULL CHECK (zone_id IN ('HighWaves', 'Parametric', 'Broching', 'Main')),
    zone_status BOOLEAN NOT NULL
);
