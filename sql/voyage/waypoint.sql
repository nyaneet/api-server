-- Relations to store waypoints of a voyage

DROP TABLE IF EXISTS waypoint;

CREATE TABLE IF NOT EXISTS waypoint (
    id INT GENERATED ALWAYS AS IDENTITY, -- ID of the waypoint
    project_id INT, -- ID of the project
    ship_id INT NOT NULL, -- ID of the ship
    port_name TEXT NOT NULL, -- Name of the port (or port city)
    port_code TEXT NOT NULL, -- Code of the port
    eta TIMESTAMP WITH TIME ZONE NOT NULL, -- ETA of the waypoint (elapsed time of arrival)
    etd TIMESTAMP WITH TIME ZONE NOT NULL, -- ETD of the waypoint (elapsed time of departure)
    hex_color TEXT NOT NULL, -- Color to identify waypoint when displaying
    max_draught FLOAT8 NOT NULL, -- TODO
    CONSTRAINT waypoint_pk PRIMARY KEY (id),
    CONSTRAINT waypoint_time_check CHECK(eta <= etd)
)