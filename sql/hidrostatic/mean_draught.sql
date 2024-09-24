-- Средняя осадка
-- зависимость от объемного водоизмещения
-- V, м3 | T, м
DROP TABLE IF EXISTS mean_draught CASCADE;

CREATE TABLE if not exists mean_draught (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  key FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT mean_draught_pk PRIMARY KEY (id), 
  CONSTRAINT mean_draught_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, key)
);