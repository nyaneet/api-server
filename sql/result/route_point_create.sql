DROP TABLE IF EXISTS route_point;

CREATE TABLE IF NOT EXISTS route_point (
    id SERIAL PRIMARY KEY, -- ID of the route point
    pol_id INT NOT NULL, -- ID of the POL (Point Of Loading)
    pod_id INT NOT NULL, -- ID of the POD (Point Of Discharge)
    latitude FLOAT NOT NULL, -- Value of latitude
    latitude FLOAT NOT NULL, -- Value of latitude
    point_order INT NOT NULL, -- Order of route point
    CONSTRAINT route_point_pol_fk FOREIGN KEY (pol_id) REFERENCES waypoint (id),
    CONSTRAINT route_point_pod_fk FOREIGN KEY (pod_id) REFERENCES waypoint (id),
    CONSTRAINT unique_route_order UNIQUE (pol_id, pod_id, point_order)
);