DROP TABLE IF EXISTS port;

CREATE TABLE IF NOT EXISTS port (
    id INT GENERATED ALWAYS AS IDENTITY,
    port_name_ru TEXT NOT NULL,
    port_name_en TEXT NOT NULL,
    port_code TEXT NOT NULL,
    latitude DECIMAL(15, 10) NOT NULL,
    longitude DECIMAL(15, 10) NOT NULL,
    CONSTRAINT port_pk PRIMARY KEY (id),
    CONSTRAINT port_name_ru_length_check CHECK (char_length(port_name_ru) > 0),
    CONSTRAINT port_name_en_length_check CHECK (char_length(port_name_en) > 0),
    CONSTRAINT port_code_length_check CHECK (char_length(port_code) BETWEEN 1 AND 5),
    -- CONSTRAINT port_code_unique UNIQUE (port_code),
    CONSTRAINT latitude_range_check CHECK (latitude >= -90 AND latitude <= 90),
    CONSTRAINT longitude_range_check CHECK (longitude >= -180 AND longitude <= 180)
);
