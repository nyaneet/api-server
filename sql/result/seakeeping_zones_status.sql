DROP TABLE IF EXISTS seakeeping_zones_status CASCADE;

DROP TYPE IF EXISTS zone_type CASCADE;
CREATE TYPE zone_type AS ENUM ('HighWaves', 'Parametric', 'Broaching', 'Main');

CREATE TABLE IF NOT EXISTS seakeeping_zones_status (
    id SERIAL PRIMARY KEY,
    ship_id INT NOT NULL,
    zone_id zone_type,
    zone_status BOOLEAN NOT NULL
);
