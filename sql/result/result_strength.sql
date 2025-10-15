
-- Результаты расчета прочности
DROP TABLE IF EXISTS result_strength_values CASCADE;

CREATE TABLE
    IF NOT EXISTS result_strength_values (
        id INT GENERATED ALWAYS AS IDENTITY,
        project_id INT,
        ship_id INT NOT NULL,
        start_x FLOAT8 NOT NULL,
        end_x FLOAT8 NOT NULL,
        value_mass_hull FLOAT8 NOT NULL,
        value_mass_equipment FLOAT8 NOT NULL,
        value_mass_ballast FLOAT8 NOT NULL,
        value_mass_bulkhead FLOAT8 NOT NULL,        
        value_mass_store FLOAT8 NOT NULL,
        value_mass_cargo FLOAT8 NOT NULL,
        value_mass_icing FLOAT8 NOT NULL,
        value_mass_wetting FLOAT8 NOT NULL,
        value_mass_sum FLOAT8 NOT NULL,
        value_displacement FLOAT8 NOT NULL,
        value_total_force FLOAT8 NOT NULL,
        CONSTRAINT result_strength_values_pk PRIMARY KEY (id)
    );

COMMENT ON TABLE result_strength_values IS 'start_x, end_x corresponds to the values in table computed_frame_space';

DROP TABLE IF EXISTS result_strength_force_and_moment CASCADE;

CREATE TABLE
    IF NOT EXISTS result_strength_force_and_moment (
        id INT GENERATED ALWAYS AS IDENTITY,
        project_id INT,
        ship_id INT NOT NULL,
        frame_x FLOAT8 NOT NULL,
        value_shear_force FLOAT8 NOT NULL,
        value_bending_moment FLOAT8 NOT NULL,
        limit_low_shear_force FLOAT8 NOT NULL,
        limit_high_shear_force FLOAT8 NOT NULL,
        percent_shear_force FLOAT8 NOT NULL,
        status_shear_force BOOLEAN NOT NULL,
        limit_low_bending_moment FLOAT8 NOT NULL,
        limit_high_bending_moment FLOAT8 NOT NULL,
        percent_bending_moment FLOAT8 NOT NULL,
        status_bending_moment BOOLEAN NOT NULL,
        CONSTRAINT result_strength_values_pk PRIMARY KEY (id)
    );

COMMENT ON TABLE result_strength_force_and_moment IS 'frame_x corresponds to the values in table computed_frame_space';