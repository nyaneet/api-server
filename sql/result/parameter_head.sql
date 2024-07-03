-- Дополнительные результаты расчета остойчивости, 
-- текст и единицы измерения
DROP TABLE IF EXISTS parameter_head CASCADE;

CREATE TABLE IF NOT EXISTS parameter_head (
  id INT NOT NULL,
  title_rus TEXT NOT NULL,
  title_eng TEXT,
  unit_rus unit_rus_stability,
  unit_eng unit_eng_stability,
  CONSTRAINT parameter_head_pk PRIMARY KEY (id),
  CONSTRAINT parameter_head_id_unique UNIQUE (id),
  CONSTRAINT parameter_head_check_title_rus CHECK(char_length(title_rus) <= 100)
--  CONSTRAINT parameter_head_check_ttitle_eng CHECK(char_length(title_eng) <= 100)
);

TRUNCATE TABLE parameter_head;

INSERT INTO parameter_head
  (id, title_rus, unit_rus, unit_eng)
VALUES
  (1, 'Аппликата центра тяжести исправленная', 'м', 'm'),
  (2, 'Водоизмещение весовое', 'т', 't'),
  (3, 'Осадка средняя', 'м', 'm'),
  (4, 'Осадка на носовом перпендикуляре', 'м', 'm'),
  (5, 'Осадка на кормовом перпендикуляре', 'м', 'm'),
  (6, 'Дифферент', 'град', 'deg'),
  (7, 'Статический угол крена судна', 'град', 'deg'),
  (8, 'Число тонн на 1 см осадки', 'т', 't'),
  (9, 'Момент кренящий на 1 градус', 'т∙м', 't∙m'),
  (10, 'Момент дифферентующий на 1 см осадки', 'т∙м/см', 't∙m/cm'),
  (11, 'Аппликата центра величины', 'м', 'm'),
  (12, 'Аппликата центра тяжести', 'м', 'm'),
  (13, 'Поперечный метацентрический радиус', 'м', 'm'),
  (14, 'Аппликата поперечного метацентра', 'м', 'm'),
  (15, 'Поперечная метацентрическая высота', 'м', 'm'),
  (16, 'Поправка от цистерн запаса к поперечной метацентрической высоте', 'м', 'm'),
  (17, 'Поправка от балласта к поперечной метацентрической высоте', 'м', 'm'),
  (18, 'Поперечная метацентрическая высота исправленная', 'м', 'm'),
  (19, 'Продольный метацентрический радиус', 'м', 'm'),   
  (20, 'Аппликата продольного метацентра', 'м', 'm'),  
  (21, 'Продольная метацентрическая высота', 'м', 'm'),  
  (22, 'Поправка от цистерн запаса к продольной метацентрической высоте', 'м', 'm'),
  (23, 'Поправка от балласта к продольной метацентрической высоте', 'м', 'm'),
  (24, 'Продольная метацентрическая высота исправленная', 'м', 'm'),
  (25, 'Масса балласта', 'т', 't'),
  (26, 'Масса запасов', 'т', 't'),
  (27, 'Масса груза', 'т', 't'),
  (28, 'Дедвейт', 'т', 't'),
  (29, 'Масса порожнем', 'т', 't'),
  (30, 'Масса наледи', 'т', 't'),
  (31, 'Масса намокания', 'т', 't'),
  (32, 'Абсцисса центра тяжести', 'м', 'm');

INSERT INTO parameter_head
  (id, title_rus, title_eng, unit_rus, unit_eng)
VALUES
  (33, 'Давление ветра', 'Wind pressure', 'Па', 'Pa'),
  (34, 'Площадь парусности', 'Windage area', 'м^2', 'm^2'),  
  (35, 'Плечо парусности', 'Windage area lever', 'м', 'm'),
  (36, 'Плечо статического ветрового кренящего момента', 'Static windage heeling lever', 'м', 'm'),
  (37, 'Плечо динамического ветрового кренящего момента', 'Dynamic windage heeling lever', 'м', 'm'),
  (38, 'Ветровой статический угол крена', 'Static windage heeling angle', 'град', 'deg'),
  (39, 'Ветровой динамический угол крена', 'Dynamic windage heeling angle', 'град', 'deg'),
  (40, 'Угол второго пересечения с кривой', 'Heeling angle of second point of intersection with', 'град', 'deg'),
  (41, 'Амплитуда качки', 'Roll amplitude', 'град', 'deg'),
  (42, 'Период качки', 'Roll period', 'с', 's'),
  (43, 'Площадь a', 'Area a', 'м^2', 'm^2'),
  (44, 'Площадь b', 'Area b', 'м^2', 'm^2'),
  (45, 'Угол входа в воду кромки палубы', 'Open deck edge immersion angle', 'град', 'deg'),
  (46, 'Угол заливания', 'Angle of down-flooding', 'град', 'deg'),
  (47, 'Угол заката', 'Sunset angle', 'град', 'deg'),
  (48, 'Кренящий момент от смещения зерна', 'Heeling moment due to the transverse shift of grain', 'кН∙м', 'kN∙m'),
  (49, 'Угол крена при максимальной разности', 'Heeling angle with maximum difference', 'град', 'deg'),
  (50, 'Скорость судна', 'Vessel speed', 'уз', 'knot');




