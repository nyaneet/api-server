--
-- Analogue of compartment_curve generated for hold_compartment;
--
DROP MATERIALIZED VIEW IF EXISTS hold_compartment_curve CASCADE;

CREATE MATERIALIZED VIEW IF NOT EXISTS hold_compartment_curve AS
SELECT
    -- ID of hold_compartment;
    hc.id AS hold_compartment_id,
    -- ID of project;
    hc.project_id AS project_id,
    -- ID of ship;
    hc.ship_id AS ship_id,
    -- Draught level for which other parameter values stored, measured in meters;
    cc.level AS level,
    -- Volume value for corresponding level, measured in cubic meters;
    SUM(cc.volume) AS volume,
    -- Values of bouyanancy in three axes for corresponding level, measured in meters;
    SUM(cc.volume * cc.buoyancy_x) / NULLIF(SUM(cc.volume), 0) AS buoyancy_x,
    SUM(cc.volume * cc.buoyancy_y) / NULLIF(SUM(cc.volume), 0) AS buoyancy_y,
    SUM(cc.volume * cc.buoyancy_z) / NULLIF(SUM(cc.volume), 0) AS buoyancy_z
FROM
    hold_compartment AS hc
JOIN hold_part AS hp ON
    hp.group_index >= hc.group_start_index
    AND hp.group_index <= hc.group_end_index
    AND hc.ship_id = hp.ship_id
    AND hc.project_id IS NOT DISTINCT FROM hp.project_id
JOIN compartment_curve AS cc ON
    hp.space_id = cc.space_id
    AND hp.ship_id = cc.ship_id
    AND hp.project_id IS NOT DISTINCT FROM cc.project_id
GROUP BY
    hc.id,
    cc.level
ORDER BY
    hc.id,
    cc.level ASC;

-- Function to calling refresh of MATERIALIZED VIEW for hold_compartment_curve;
DROP FUNCTION IF EXISTS refresh_hold_compartment_curve CASCADE;

CREATE OR REPLACE FUNCTION refresh_hold_compartment_curve()
RETURNS TRIGGER AS $$
    BEGIN
    REFRESH MATERIALIZED VIEW hold_compartment_curve;
    RETURN NULL;
END $$ LANGUAGE plpgsql;

--
-- Triggers that are used to refresh MATERIALIZED VIEW
-- of hold_compartment_curve when related data is updated;
--

-- Update hold_compartment_curve entries on hold_compartment changed;
DROP TRIGGER IF EXISTS agg_hold_compartment_curve_on_hold_compartment_changed_trigger ON hold_compartment CASCADE;

CREATE TRIGGER agg_hold_compartment_curve_on_hold_compartment_changed_trigger
AFTER INSERT OR UPDATE OR DELETE OR TRUNCATE ON hold_compartment
FOR EACH STATEMENT
EXECUTE PROCEDURE refresh_hold_compartment_curve();

-- Update hold_compartment_curve entries on compartment_curve changed;
DROP TRIGGER IF EXISTS agg_hold_compartment_curve_on_compartment_curve_changed_trigger ON compartment_curve CASCADE;

CREATE TRIGGER agg_hold_compartment_curve_on_compartment_curve_changed_trigger
AFTER INSERT OR UPDATE OR DELETE OR TRUNCATE ON compartment_curve
FOR EACH STATEMENT
EXECUTE PROCEDURE refresh_hold_compartment_curve();