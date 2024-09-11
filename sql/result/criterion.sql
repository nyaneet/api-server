-- Результат расчета остойчивости
DROP TABLE IF EXISTS criterion CASCADE;

DROP TYPE IF EXISTS math_relation CASCADE;
DROP TYPE IF EXISTS unit_eng_stability CASCADE;
DROP TYPE IF EXISTS unit_rus_stability CASCADE;

CREATE TYPE math_relation as enum ('<=', '>=');

CREATE TABLE IF NOT EXISTS criterion (
  id INT NOT NULL,
  title_rus TEXT NOT NULL,
  title_eng TEXT NOT NULL,
  math_relation math_relation,
  unit_id INT,
  category_id INT NOT NULL,
  CONSTRAINT criterion_pk PRIMARY KEY (id),
  CONSTRAINT criterion_unit_fk FOREIGN KEY (unit_id) REFERENCES unit (id),
  CONSTRAINT criterion_category_fk FOREIGN KEY (category_id) REFERENCES criterion_category (id),
  CONSTRAINT criterion_check_title_rus CHECK(char_length(title_rus) <= 100),
  CONSTRAINT criterion_check_ttitle_eng CHECK(char_length(title_eng) <= 100)
);

TRUNCATE TABLE criterion;

INSERT INTO criterion
  (id, title_rus, title_eng, math_relation, category_id)
VALUES
  (1, 'Критерий погоды', 'Weather criterion', '>=', 1),
  (13, 'Критерий ускорения', 'Acceleration criterion', '>=', 1);

INSERT INTO criterion
  (id, title_rus, title_eng, math_relation, unit_id, category_id)
VALUES
  (2, 'Статический крен от ветра', 'Wind static heel', '<=', 1, 1),
  (3, 'Площадь ДСО до 30°', 'Area of LC up to 30°', '>=', 5, 1),
  (4, 'Площадь ДСО до 40°', 'Area of LC up to 40°', '>=', 5, 1),
  (5, 'Площадь ДСО до θₗₘₐₓ', 'Area of LC up to θₗₘₐₓ', '>=', 5, 1),
  (6, 'Площадь ДСО от 30° до 40°', 'Area of LC between 30° & 40°', '>=', 5, 1),
  (7, 'Максимальное плечо ДСО', 'Maximum LC', '>=', 2, 1),
  (8, 'Максимальное плечо ДСО при перевозке леса', 'Maximum LC with timber', '>=', 2, 1),
  (9, 'Максимальное плечо ДСО при обледенении', 'Maximum LC with icing', '>=', 2, 1),
  (10, 'Максимальный угол ДСО', 'Heel with maximum LC', '>=', 1, 1),  
  (11, 'Первый максимум ДСО', 'Heel with first maximum LC', '>=', 1, 1),  
  (12, 'Исправленная метацентрическая высота', 'Min. metacentric height', '>=', 2, 1),
  (14, 'Крен на циркуляции', 'Heel on turning', '>=', 1, 1),
  (15, 'Крен от смещения зерна', 'Heel from grain displacement', '<=', 1, 1),
  (16, 'Площадь ДСО при смещении зерна', 'Area of LC from grain displacement', '>=', 5, 1),
  (17, 'Минимальная метацентрическая высота деления на отсеки', 'Min. metacentric height due to subdivision index', '>=', 2, 1),
-- Критерии посадки
  (101, 'Осадка по грузовой марке ПрБ', 'Load line draft SB', '<=', 2, 2),
  (102, 'Осадка по грузовой марке ЛБ', 'Load line draft PS', '<=', 2, 2),
  (103, 'Максимальный дифферент на нос', 'Maximum forward trim', '<=', 2, 2),
  (104, 'Максимальный дифферент на корму', 'Maximum aft trim', '<=', 2, 2),
  (105, 'Высота на носовом перпендикуляре ПрБ', 'Depth at forward perpendicular SB', '>=', 2, 2),
  (106, 'Высота на носовом перпендикуляре ЛБ', 'Depth at forward perpendicular PS', '>=', 2, 2),
  (107, 'Заглубление винта ДП', 'Screw immersion CL', '>=', 13, 2),
  (108, 'Заглубление винта ПрБ', 'Screw immersion PS', '>=', 13, 2),
  (109, 'Заглубление винта ЛБ', 'Screw immersion SB', '>=', 13, 2),
  (110, 'Заглубление винта (резерв)', 'Screw immersion PS', '>=', 13, 2),
  (111, 'Заглубление винта (резерв)', 'Screw immersion SB', '>=', 13, 2),
  (112, 'Запас плавучести в носу', 'Reserve buoyncy in bow', '>=', 3, 2),
  (113, 'Минимальная осадка на миделе', 'Minimum middle draft', '>=', 2, 2),
  (114, 'Минимальная осадка в носу', 'Minimum forward draft', '>=', 2, 2);

