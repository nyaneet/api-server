DROP TABLE IF EXISTS route_point;

CREATE TABLE IF NOT EXISTS route_point (
    id INT GENERATED ALWAYS AS IDENTITY, -- ID of the route point
    project_id INT, -- ID of the project
    ship_id INT, -- ID of the ship
    pol_id INT NOT NULL, -- ID of the POL (Point Of Loading)
    pod_id INT NOT NULL, -- ID of the POD (Point Of Discharge)
    latitude FLOAT NOT NULL, -- Value of latitude
    longitude FLOAT NOT NULL, -- Value of longitude
    point_order INT NOT NULL, -- Order of route point
    CONSTRAINT route_point_pk PRIMARY KEY (id),
    CONSTRAINT route_point_pol_fk FOREIGN KEY (pol_id) REFERENCES port (id),
    CONSTRAINT route_point_pod_fk FOREIGN KEY (pod_id) REFERENCES port (id),
    CONSTRAINT unique_route_point_order UNIQUE (project_id, ship_id, pol_id, pod_id, point_order) DEFERRABLE INITIALLY DEFERRED
);
