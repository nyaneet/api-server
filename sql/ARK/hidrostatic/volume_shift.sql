-- Отстояние по вертикали центра площади проекции 
-- подводной части корпуса на диаметральную плоскость 
-- в прямом положении судна на спокойной воде 
-- в зависимости от осадки
-- d, м | z, м
INSERT INTO volume_shift
  (ship_id, key, value)
VALUES
    (1, 0.5, 0.25),
    (1, 1, 0.51),
    (1, 1.5, 0.76),
    (1, 2, 1.02),
    (1, 2.5, 1.28),
    (1, 3, 1.54),
    (1, 3.5, 1.80),
    (1, 4, 2.05),
    (1, 4.5, 2.31),
    (1, 5, 2.56),
    (1, 5.5, 2.82),
    (1, 6, 3.07),
    (1, 6.5, 3.32),
    (1, 6.8, 3.48);