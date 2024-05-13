-- Координаты и параметры отсеков и цистерн.
-- По умолчанию все пустые
INSERT INTO load_space
  (ship_id, space_id, key, value, value_type, unit)
VALUES  
  (1, 1, 'name', 'Грузовой трюм', 'text', NULL),
  (1, 1, 'mass', '0', 'real', 't'),
  (1, 1, 'bound_x1', '25', 'frame', 'm'),
  (1, 1, 'bound_x2', '151', 'frame', 'm'),
  (1, 1, 'mass_shift_x', '-3.55', 'real', 'm'),
  (1, 1, 'mass_shift_y', '0', 'real', 'm'),
  (1, 1, 'mass_shift_z', '4.52', 'real', 'm'),
  (1, 1, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 1, 'm_f_s_x', '0', 'real', 'm'),
  (1, 2, 'name', 'Форпик Пр.Б', 'text', NULL),
  (1, 2, 'mass', '0', 'real', 't'),
  (1, 2, 'bound_x1', '179', 'frame', 'm'),
  (1, 2, 'bound_x2', '187', 'frame', 'm'),
  (1, 2, 'mass_shift_x', '56.16', 'real', 'm'),
  (1, 2, 'mass_shift_y', '1.71', 'real', 'm'),
  (1, 2, 'mass_shift_z', '4.59', 'real', 'm'),
  (1, 2, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 2, 'm_f_s_x', '0', 'real', 'm'),
  (1, 3, 'name', 'Форпик ЛБ', 'text', NULL),
  (1, 3, 'mass', '0', 'real', 't'),
  (1, 3, 'bound_x1', '179', 'frame', 'm'),
  (1, 3, 'bound_x2', '187', 'frame', 'm'),
  (1, 3, 'mass_shift_x', '56.16', 'real', 'm'),
  (1, 3, 'mass_shift_y', '-1.71', 'real', 'm'),
  (1, 3, 'mass_shift_z', '4.59', 'real', 'm'),
  (1, 3, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 3, 'm_f_s_x', '0', 'real', 'm'),
  (1, 4, 'name', 'Балласт 1 Пр.Б', 'text', NULL),
  (1, 4, 'mass', '0', 'real', 't'),
  (1, 4, 'bound_x1', '153', 'frame', 'm'),
  (1, 4, 'bound_x2', '174', 'frame', 'm'),
  (1, 4, 'mass_shift_x', '44.27', 'real', 'm'),
  (1, 4, 'mass_shift_y', '2.99', 'real', 'm'),
  (1, 4, 'mass_shift_z', '0.43', 'real', 'm'),
  (1, 4, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 4, 'm_f_s_x', '0', 'real', 'm'),
  (1, 5, 'name', 'Балласт 1 ЛБ', 'text', NULL),
  (1, 5, 'mass', '0', 'real', 't'),
  (1, 5, 'bound_x1', '153', 'frame', 'm'),
  (1, 5, 'bound_x2', '174', 'frame', 'm'),
  (1, 5, 'mass_shift_x', '44.38', 'real', 'm'),
  (1, 5, 'mass_shift_y', '-2.85', 'real', 'm'),
  (1, 5, 'mass_shift_z', '0.43', 'real', 'm'),
  (1, 5, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 5, 'm_f_s_x', '0', 'real', 'm'),
  (1, 6, 'name', 'Балласт 2 Пр.Б', 'text', NULL),
  (1, 6, 'mass', '0', 'real', 't'),
  (1, 6, 'bound_x1', '135', 'frame', 'm'),
  (1, 6, 'bound_x2', '153', 'frame', 'm'),
  (1, 6, 'mass_shift_x', '33.11', 'real', 'm'),
  (1, 6, 'mass_shift_y', '5.95', 'real', 'm'),
  (1, 6, 'mass_shift_z', '3.43', 'real', 'm'),
  (1, 6, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 6, 'm_f_s_x', '0', 'real', 'm'),
  (1, 7, 'name', 'Балласт 2 ЛБ', 'text', NULL),
  (1, 7, 'mass', '0', 'real', 't'),
  (1, 7, 'bound_x1', '135', 'frame', 'm'),
  (1, 7, 'bound_x2', '153', 'frame', 'm'),
  (1, 7, 'mass_shift_x', '33.11', 'real', 'm'),
  (1, 7, 'mass_shift_y', '-5.95', 'real', 'm'),
  (1, 7, 'mass_shift_z', '3.43', 'real', 'm'),
  (1, 7, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 7, 'm_f_s_x', '0', 'real', 'm'),
  (1, 8, 'name', 'Балласт 2 ДД', 'text', NULL),
  (1, 8, 'mass', '0', 'real', 't'),
  (1, 8, 'bound_x1', '135', 'frame', 'm'),
  (1, 8, 'bound_x2', '153', 'frame', 'm'),
  (1, 8, 'mass_shift_x', '33.11', 'real', 'm'),
  (1, 8, 'mass_shift_y', '0.0', 'real', 'm'),
  (1, 8, 'mass_shift_z', '0.41', 'real', 'm'),
  (1, 8, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 8, 'm_f_s_x', '0', 'real', 'm'),
  (1, 9, 'name', 'Балласт 3 Пр.', 'text', NULL),
  (1, 9, 'mass', '0', 'real', 't'),
  (1, 9, 'bound_x1', '117', 'frame', 'm'),
  (1, 9, 'bound_x2', '135', 'frame', 'm'),
  (1, 9, 'mass_shift_x', '21.41', 'real', 'm'),
  (1, 9, 'mass_shift_y', '5.95', 'real', 'm'),
  (1, 9, 'mass_shift_z', '3.43', 'real', 'm'),
  (1, 9, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 9, 'm_f_s_x', '0', 'real', 'm'),
  (1, 10, 'name', 'Балласт 3 ЛБ', 'text', NULL),
  (1, 10, 'mass', '0', 'real', 't'),
  (1, 10, 'bound_x1', '117', 'frame', 'm'),
  (1, 10, 'bound_x2', '135', 'frame', 'm'),
  (1, 10, 'mass_shift_x', '21.41', 'real', 'm'),
  (1, 10, 'mass_shift_y', '-5.95', 'real', 'm'),
  (1, 10, 'mass_shift_z', '3.43', 'real', 'm'),
  (1, 10, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 10, 'm_f_s_x', '0', 'real', 'm'),
  (1, 11, 'name', 'Балласт 3 ДД', 'text', NULL),
  (1, 11, 'mass', '0', 'real', 't'),
  (1, 11, 'bound_x1', '117', 'frame', 'm'),
  (1, 11, 'bound_x2', '135', 'frame', 'm'),
  (1, 11, 'mass_shift_x', '21.41', 'real', 'm'),
  (1, 11, 'mass_shift_y', '0.0', 'real', 'm'),
  (1, 11, 'mass_shift_z', '0.41', 'real', 'm'),
  (1, 11, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 11, 'm_f_s_x', '0', 'real', 'm'),
  (1, 12, 'name', 'Балласт 4 Пр.Б', 'text', NULL),
  (1, 12, 'mass', '0', 'real', 't'),
  (1, 12, 'bound_x1', '88', 'frame', 'm'),
  (1, 12, 'bound_x2', '117', 'frame', 'm'),
  (1, 12, 'mass_shift_x', '6.13', 'real', 'm'),
  (1, 12, 'mass_shift_y', '5.95', 'real', 'm'),
  (1, 12, 'mass_shift_z', '3.43', 'real', 'm'),
  (1, 12, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 12, 'm_f_s_x', '0', 'real', 'm'),
  (1, 13, 'name', 'Балласт 4 ЛБ', 'text', NULL),
  (1, 13, 'mass', '0', 'real', 't'),
  (1, 13, 'bound_x1', '88', 'frame', 'm'),
  (1, 13, 'bound_x2', '117', 'frame', 'm'),
  (1, 13, 'mass_shift_x', '6.13', 'real', 'm'),
  (1, 13, 'mass_shift_y', '-5.95', 'real', 'm'),
  (1, 13, 'mass_shift_z', '3.43', 'real', 'm'),
  (1, 13, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 13, 'm_f_s_x', '0', 'real', 'm'),
  (1, 14, 'name', 'Балласт 4 ДД', 'text', NULL),
  (1, 14, 'mass', '0', 'real', 't'),
  (1, 14, 'bound_x1', '88', 'frame', 'm'),
  (1, 14, 'bound_x2', '117', 'frame', 'm'),
  (1, 14, 'mass_shift_x', '6.13', 'real', 'm'),
  (1, 14, 'mass_shift_y', '0.0', 'real', 'm'),
  (1, 14, 'mass_shift_z', '0.41', 'real', 'm'),
  (1, 14, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 14, 'm_f_s_x', '0', 'real', 'm'),
  (1, 15, 'name', 'Балласт 5 Пр.Б', 'text', NULL),
  (1, 15, 'mass', '0', 'real', 't'),
  (1, 15, 'bound_x1', '59', 'frame', 'm'),
  (1, 15, 'bound_x2', '88', 'frame', 'm'),
  (1, 15, 'mass_shift_x', '-12.72', 'real', 'm'),
  (1, 15, 'mass_shift_y', '5.95', 'real', 'm'),
  (1, 15, 'mass_shift_z', '3.43', 'real', 'm'),
  (1, 15, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 15, 'm_f_s_x', '0', 'real', 'm'),
  (1, 16, 'name', 'Балласт 5 ЛБ', 'text', NULL),
  (1, 16, 'mass', '0', 'real', 't'),
  (1, 16, 'bound_x1', '59', 'frame', 'm'),
  (1, 16, 'bound_x2', '88', 'frame', 'm'),
  (1, 16, 'mass_shift_x', '-12.72', 'real', 'm'),
  (1, 16, 'mass_shift_y', '-5.95', 'real', 'm'),
  (1, 16, 'mass_shift_z', '3.43', 'real', 'm'),
  (1, 16, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 16, 'm_f_s_x', '0', 'real', 'm'),
  (1, 17, 'name', 'Балласт 5 ДД', 'text', NULL), 
  (1, 17, 'mass', '0', 'real', 't'),
  (1, 17, 'bound_x1', '59', 'frame', 'm'),
  (1, 17, 'bound_x2', '88', 'frame', 'm'),
  (1, 17, 'mass_shift_x', '-12.72', 'real', 'm'),
  (1, 17, 'mass_shift_y', '0.0', 'real', 'm'),
  (1, 17, 'mass_shift_z', '0.41', 'real', 'm'),
  (1, 17, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 17, 'm_f_s_x', '0', 'real', 'm'),
  (1, 18, 'name', 'Балласт 6 Пр.Б', 'text', NULL),
  (1, 18, 'mass', '0', 'real', 't'),
  (1, 18, 'bound_x1', '40', 'frame', 'm'),
  (1, 18, 'bound_x2', '59', 'frame', 'm'),
  (1, 18, 'mass_shift_x', '-29.32', 'real', 'm'),
  (1, 18, 'mass_shift_y', '5.95', 'real', 'm'),
  (1, 18, 'mass_shift_z', '3.43', 'real', 'm'),
  (1, 18, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 18, 'm_f_s_x', '0', 'real', 'm'),
  (1, 19, 'name', 'Балласт 6 ЛБ', 'text', NULL),
  (1, 19, 'mass', '0', 'real', 't'),
  (1, 19, 'bound_x1', '40', 'frame', 'm'),
  (1, 19, 'bound_x2', '59', 'frame', 'm'),
  (1, 19, 'mass_shift_x', '-29.32', 'real', 'm'),
  (1, 19, 'mass_shift_y', '-5.95', 'real', 'm'),
  (1, 19, 'mass_shift_z', '3.43', 'real', 'm'),
  (1, 19, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 19, 'm_f_s_x', '0', 'real', 'm'),
  (1, 20, 'name', 'Балласт 6 ДД', 'text', NULL),
  (1, 20, 'mass', '0', 'real', 't'),
  (1, 20, 'bound_x1', '40', 'frame', 'm'),
  (1, 20, 'bound_x2', '59', 'frame', 'm'),
  (1, 20, 'mass_shift_x', '-29.32', 'real', 'm'),
  (1, 20, 'mass_shift_y', '0.0', 'real', 'm'),
  (1, 20, 'mass_shift_z', '0.41', 'real', 'm'),
  (1, 20, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 20, 'm_f_s_x', '0', 'real', 'm'),
  (1, 21, 'name', 'Балласт 7 Пр.Б', 'text', NULL),
  (1, 21, 'mass', '0', 'real', 't'),
  (1, 21, 'bound_x1', '22', 'frame', 'm'),
  (1, 21, 'bound_x2', '40', 'frame', 'm'),
  (1, 21, 'mass_shift_x', '-40.24', 'real', 'm'),
  (1, 21, 'mass_shift_y', '5.95', 'real', 'm'),
  (1, 21, 'mass_shift_z', '3.43', 'real', 'm'),
  (1, 21, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 21, 'm_f_s_x', '0', 'real', 'm'),
  (1, 22, 'name', 'Балласт 7 ЛБ', 'text', NULL),
  (1, 22, 'mass', '0', 'real', 't'),
  (1, 22, 'bound_x1', '22', 'frame', 'm'),
  (1, 22, 'bound_x2', '40', 'frame', 'm'),
  (1, 22, 'mass_shift_x', '-40.24', 'real', 'm'),
  (1, 22, 'mass_shift_y', '-5.95', 'real', 'm'),
  (1, 22, 'mass_shift_z', '3.43', 'real', 'm'),
  (1, 22, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 22, 'm_f_s_x', '0', 'real', 'm'),
  (1, 23, 'name', 'Балласт 7 ДД', 'text', NULL),
  (1, 23, 'mass', '0', 'real', 't'),
  (1, 23, 'bound_x1', '22', 'frame', 'm'),
  (1, 23, 'bound_x2', '40', 'frame', 'm'),
  (1, 23, 'mass_shift_x', '-40.24', 'real', 'm'),
  (1, 23, 'mass_shift_y', '0.0', 'real', 'm'),
  (1, 23, 'mass_shift_z', '0.41', 'real', 'm'),
  (1, 23, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 23, 'm_f_s_x', '0', 'real', 'm'),
  (1, 24, 'name', 'Цистерна расходного топлива 1 ЛБ', 'text', NULL),
  (1, 24, 'mass', '0', 'real', 't'),
  (1, 24, 'bound_x1', '6', 'frame', 'm'),
  (1, 24, 'bound_x2', '10', 'frame', 'm'),
  (1, 24, 'mass_shift_x', '-54.39', 'real', 'm'),
  (1, 24, 'mass_shift_y', '-1.73', 'real', 'm'),
  (1, 24, 'mass_shift_z', '5.30', 'real', 'm'),
  (1, 24, 'm_f_s_y', '0', 'real', 'm'),
  (1, 24, 'm_f_s_x', '0', 'real', 'm'),
  (1, 25, 'name', 'Цистерна расходного топлива 2 ЛБ', 'text', NULL),
  (1, 25, 'mass', '0', 'real', 't'),
  (1, 25, 'bound_x1', '6', 'frame', 'm'),
  (1, 25, 'bound_x2', '10', 'frame', 'm'),
  (1, 25, 'mass_shift_x', '-54.39', 'real', 'm'),
  (1, 25, 'mass_shift_y', '-2.98', 'real', 'm'),
  (1, 25, 'mass_shift_z', '5.30', 'real', 'm'),
  (1, 25, 'm_f_s_y', '0', 'real', 'm'),
  (1, 25, 'm_f_s_x', '0', 'real', 'm'),
  (1, 26, 'name', 'Цистерна запасного топлива 1 Пр.Б', 'text', NULL),
  (1, 26, 'mass', '0', 'real', 't'),
  (1, 26, 'bound_x1', '22', 'frame', 'm'),
  (1, 26, 'bound_x2', '25', 'frame', 'm'),
  (1, 26, 'mass_shift_x', '-45.15', 'real', 'm'),
  (1, 26, 'mass_shift_y', '2.80', 'real', 'm'),
  (1, 26, 'mass_shift_z', '3.84', 'real', 'm'),
  (1, 26, 'm_f_s_y', '0', 'real', 'm'),
  (1, 26, 'm_f_s_x', '0', 'real', 'm'),
  (1, 27, 'name', 'Цистерна запасного топлива 2 ЛБ', 'text', NULL),
  (1, 27, 'mass', '0', 'real', 't'),
  (1, 27, 'bound_x1', '22', 'frame', 'm'),
  (1, 27, 'bound_x2', '25', 'frame', 'm'),
  (1, 27, 'mass_shift_x', '-45.25', 'real', 'm'),
  (1, 27, 'mass_shift_y', '-2.80', 'real', 'm'),
  (1, 27, 'mass_shift_z', '3.84', 'real', 'm'),
  (1, 27, 'm_f_s_y', '0', 'real', 'm'),
  (1, 27, 'm_f_s_x', '0', 'real', 'm'),
  (1, 28, 'name', 'Цистерна запасного топлива 3 Пр.Б', 'text', NULL),
  (1, 28, 'mass', '0', 'real', 't'),
  (1, 28, 'bound_x1', '3', 'frame', 'm'),
  (1, 28, 'bound_x2', '10', 'frame', 'm'),
  (1, 28, 'mass_shift_x', '-55.01', 'real', 'm'), 
  (1, 28, 'mass_shift_y', '3.27', 'real', 'm'),
  (1, 28, 'mass_shift_z', '2.99', 'real', 'm'),
  (1, 28, 'm_f_s_y', '0', 'real', 'm'),
  (1, 28, 'm_f_s_x', '0', 'real', 'm'),
  (1, 29, 'name', 'Цистерна запасного топлива 3 ЛБ', 'text', NULL),
  (1, 29, 'mass', '0', 'real', 't'),
  (1, 29, 'bound_x1', '3', 'frame', 'm'),
  (1, 29, 'bound_x2', '10', 'frame', 'm'),
  (1, 29, 'mass_shift_x', '-55.01', 'real', 'm'),
  (1, 29, 'mass_shift_y', '-3.27', 'real', 'm'),
  (1, 29, 'mass_shift_z', '2.99', 'real', 'm'),
  (1, 29, 'm_f_s_y', '0', 'real', 'm'),
  (1, 29, 'm_f_s_x', '0', 'real', 'm'),
  (1, 30, 'name', 'Цистерна переливная ДП', 'text', NULL),
  (1, 30, 'mass', '0', 'real', 't'),
  (1, 30, 'bound_x1', '17', 'frame', 'm'),
  (1, 30, 'bound_x2', '22', 'frame', 'm'),
  (1, 30, 'mass_shift_x', '-47.46', 'real', 'm'),
  (1, 30, 'mass_shift_y', '0.00', 'real', 'm'),
  (1, 30, 'mass_shift_z', '0.73', 'real', 'm'),
  (1, 30, 'm_f_s_y', '0', 'real', 'm'),
  (1, 30, 'm_f_s_x', '0', 'real', 'm'),
  (1, 31, 'name', 'Цистерна расходного топлива АДГ Пр.Б', 'text', NULL),
  (1, 31, 'mass', '0', 'real', 't'),
  (1, 31, 'bound_x1', '154', 'frame', 'm'),
  (1, 31, 'bound_x2', '156', 'frame', 'm'),
  (1, 31, 'mass_shift_x', '39.97', 'real', 'm'),
  (1, 31, 'mass_shift_y', '2.02', 'real', 'm'),
  (1, 31, 'mass_shift_z', '11.55', 'real', 'm'),
  (1, 31, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 31, 'm_f_s_x', '0', 'real', 'm'),
  (1, 32, 'name', 'Цистерна пресной воды 1 ДП (носовая)', 'text', NULL),
  (1, 32, 'mass', '0', 'real', 't'),
  (1, 32, 'bound_x1', '157', 'frame', 'm'),
  (1, 32, 'bound_x2', '161', 'frame', 'm'),
  (1, 32, 'mass_shift_x', '42.56', 'real', 'm'),
  (1, 32, 'mass_shift_y', '-1.25', 'real', 'm'),
  (1, 32, 'mass_shift_z', '2.31', 'real', 'm'),
  (1, 32, 'm_f_s_y', '0', 'real', 'm'),
  (1, 32, 'm_f_s_x', '0', 'real', 'm'),
  (1, 33, 'name', 'Цистерна пресной воды 2 Пр.Б (кормовая)', 'text', NULL),
  (1, 33, 'mass', '0', 'real', 't'),
  (1, 33, 'bound_x1', '10', 'frame', 'm'),
  (1, 33, 'bound_x2', '12', 'frame', 'm'),
  (1, 33, 'mass_shift_x', '-52.59', 'real', 'm'),
  (1, 33, 'mass_shift_y', '5.03', 'real', 'm'),
  (1, 33, 'mass_shift_z', '5.14', 'real', 'm'),
  (1, 33, 'm_f_s_y', '0', 'real', 'm'),
  (1, 33, 'm_f_s_x', '0', 'real', 'm'),
  (1, 34, 'name', 'Цистерна питьевой воды 1 ЛБ', 'text', NULL),
  (1, 34, 'mass', '0', 'real', 't'),
  (1, 34, 'bound_x1', '155', 'frame', 'm'),
  (1, 34, 'bound_x2', '159', 'frame', 'm'),
  (1, 34, 'mass_shift_x', '41.44', 'real', 'm'),
  (1, 34, 'mass_shift_y', '-0.58', 'real', 'm'),
  (1, 34, 'mass_shift_z', '5.02', 'real', 'm'),
  (1, 34, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 34, 'm_f_s_x', '0', 'real', 'm'),
  (1, 35, 'name', 'Цистерна питьевой воды 2 ЛБ', 'text', NULL),
  (1, 35, 'mass', '0', 'real', 't'),
  (1, 35, 'bound_x1', '155', 'frame', 'm'),
  (1, 35, 'bound_x2', '159', 'frame', 'm'),
  (1, 35, 'mass_shift_x', '41.44', 'real', 'm'),
  (1, 35, 'mass_shift_y', '-1.33', 'real', 'm'),
  (1, 35, 'mass_shift_z', '5.02', 'real', 'm'),
  (1, 35, 'm_f_s_y', '0', 'real', 'm'),
  (1, 35, 'm_f_s_x', '0', 'real', 'm'),
  (1, 36, 'name', 'Цистерна запасного масла ГД', 'text', NULL),
  (1, 36, 'mass', '0', 'real', 't'),
  (1, 36, 'bound_x1', '10', 'frame', 'm'),
  (1, 36, 'bound_x2', '12', 'frame', 'm'),
  (1, 36, 'mass_shift_x', '-52.59', 'real', 'm'),
  (1, 36, 'mass_shift_y', '0.53', 'real', 'm'),
  (1, 36, 'mass_shift_z', '5.30', 'real', 'm'),
  (1, 36, 'm_f_s_y', '0', 'real', 'm'),
  (1, 36, 'm_f_s_x', '0', 'real', 'm'),
  (1, 37, 'name', 'Цистерна запасного масла ДГ', 'text', NULL),
  (1, 37, 'mass', '0', 'real', 't'),
  (1, 37, 'bound_x1', '10', 'frame', 'm'),
  (1, 37, 'bound_x2', '12', 'frame', 'm'),
  (1, 37, 'mass_shift_x', '-52.59', 'real', 'm'),
  (1, 37, 'mass_shift_y', '1.58', 'real', 'm'),
  (1, 37, 'mass_shift_z', '5.30', 'real', 'm'),
  (1, 37, 'm_f_s_y', '0', 'real', 'm'),
  (1, 37, 'm_f_s_x', '0', 'real', 'm'),
  (1, 38, 'name', 'Цистерна отработанного масла ЛБ', 'text', NULL),
  (1, 38, 'mass', '0', 'real', 't'),
  (1, 38, 'bound_x1', '10', 'frame', 'm'),
  (1, 38, 'bound_x2', '17', 'frame', 'm'),
  (1, 38, 'mass_shift_x', '-50.72', 'real', 'm'),
  (1, 38, 'mass_shift_y', '-1.50', 'real', 'm'),
  (1, 38, 'mass_shift_z', '0.94', 'real', 'm'),
  (1, 38, 'm_f_s_y', '0', 'real', 'm'),
  (1, 38, 'm_f_s_x', '0', 'real', 'm'),
  (1, 39, 'name', 'Цистерна мочевины ДП', 'text', NULL),
  (1, 39, 'mass', '0', 'real', 't'),
  (1, 39, 'bound_x1', '10', 'frame', 'm'),
  (1, 39, 'bound_x2', '14', 'frame', 'm'),
  (1, 39, 'mass_shift_x', '-51.99', 'real', 'm'),
  (1, 39, 'mass_shift_y', '0.00', 'real', 'm'),
  (1, 39, 'mass_shift_z', '2.80', 'real', 'm'),
  (1, 39, 'm_f_s_y', '0', 'real', 'm'),
  (1, 39, 'm_f_s_x', '0', 'real', 'm'),
  (1, 40, 'name', 'Цистерна нефтеостатков ДП', 'text', NULL),
  (1, 40, 'mass', '0', 'real', 't'),
  (1, 40, 'bound_x1', '10', 'frame', 'm'),
  (1, 40, 'bound_x2', '17', 'frame', 'm'),
  (1, 40, 'mass_shift_x', '-50.73', 'real', 'm'),
  (1, 40, 'mass_shift_y', '0.30', 'real', 'm'),
  (1, 40, 'mass_shift_z', '0.94', 'real', 'm'),
  (1, 40, 'm_f_s_y', '0', 'real', 'm'),
  (1, 40, 'm_f_s_x', '0', 'real', 'm'),
  (1, 41, 'name', 'Шламовая цистерна Пр.Б', 'text', NULL),
  (1, 41, 'mass', '0', 'real', 't'),
  (1, 41, 'bound_x1', '10', 'frame', 'm'),
  (1, 41, 'bound_x2', '17', 'frame', 'm'),
  (1, 41, 'mass_shift_x', '-50.73', 'real', 'm'),
  (1, 41, 'mass_shift_y', '1.80', 'real', 'm'),
  (1, 41, 'mass_shift_z', '0.94', 'real', 'm'),
  (1, 41, 'm_f_s_y', '0', 'real', 'm'),
  (1, 41, 'm_f_s_x', '0', 'real', 'm'),
  (1, 42, 'name', 'Сточная цистерна 1 ДП', 'text', NULL),
  (1, 42, 'mass', '0', 'real', 't'),
  (1, 42, 'bound_x1', '171', 'frame', 'm'),
  (1, 42, 'bound_x2', '174', 'frame', 'm'),
  (1, 42, 'mass_shift_x', '50.66', 'real', 'm'),
  (1, 42, 'mass_shift_y', '0.24', 'real', 'm'),
  (1, 42, 'mass_shift_z', '2.58', 'real', 'm'),
  (1, 42, 'm_f_s_y', '0', 'real', 'm'),
  (1, 42, 'm_f_s_x', '0', 'real', 'm'),
  (1, 43, 'name', 'Сточная цистерна 2 ЛБ', 'text', NULL),
  (1, 43, 'mass', '0', 'real', 't'),
  (1, 43, 'bound_x1', '10', 'frame', 'm'),
  (1, 43, 'bound_x2', '12', 'frame', 'm'),
  (1, 43, 'mass_shift_x', '-52.49', 'real', 'm'),
  (1, 43, 'mass_shift_y', '-5.50', 'real', 'm'),
  (1, 43, 'mass_shift_z', '2.85', 'real', 'm'),
  (1, 43, 'm_f_s_y', '0', 'real', 'm'),
  (1, 43, 'm_f_s_x', '0', 'real', 'm'),
  (1, 44, 'name', 'Кингстонный ящик Пр.Б', 'text', NULL),
  (1, 44, 'mass', '0', 'real', 't'),
  (1, 44, 'bound_x1', '19', 'frame', 'm'),
  (1, 44, 'bound_x2', '22', 'frame', 'm'),
  (1, 44, 'mass_shift_x', '-46.88', 'real', 'm'),
  (1, 44, 'mass_shift_y', '5.78', 'real', 'm'),
  (1, 44, 'mass_shift_z', '0.72', 'real', 'm'),
  (1, 44, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 44, 'm_f_s_x', '0', 'real', 'm'),
  (1, 45, 'name', 'Кингстонный ящик ЛБ', 'text', NULL),
  (1, 45, 'mass', '0', 'real', 't'),
  (1, 45, 'bound_x1', '19', 'frame', 'm'),
  (1, 45, 'bound_x2', '22', 'frame', 'm'),
  (1, 45, 'mass_shift_x', '-46.88', 'real', 'm'),
  (1, 45, 'mass_shift_y', '-5.78', 'real', 'm'),
  (1, 45, 'mass_shift_z', '0.72', 'real', 'm'),
  (1, 45, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 45, 'm_f_s_x', '0', 'real', 'm'),
  (1, 46, 'name', 'Коффердам', 'text', NULL),
  (1, 46, 'mass', '0', 'real', 't'),
  (1, 46, 'bound_x1', '151', 'frame', 'm'),
  (1, 46, 'bound_x2', '153', 'frame', 'm'),
  (1, 46, 'mass_shift_x', '38.31', 'real', 'm'),
  (1, 46, 'mass_shift_y', '0', 'real', 'm'),
  (1, 46, 'mass_shift_z', '3.84', 'real', 'm'),
  (1, 46, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 46, 'm_f_s_x', '0', 'real', 'm'),
  (1, 47, 'name', 'Экипаж и багаж', 'text', NULL),
  (1, 47, 'mass', '1.80', 'real', 't'),
  (1, 47, 'bound_x1', '44.31', 'real', 'm'),
  (1, 47, 'bound_x2', '46.31', 'real', 'm'),
  (1, 47, 'mass_shift_x', '45.31', 'real', 'm'),
  (1, 47, 'mass_shift_y', '-4.46', 'real', 'm'),
  (1, 47, 'mass_shift_z', '7.70', 'real', 'm'),
  (1, 47, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 47, 'm_f_s_x', '0', 'real', 'm'),
  (1, 48, 'name', 'Провизия', 'text', NULL),
  (1, 48, 'mass', '0', 'real', 't'),
  (1, 48, 'bound_x1', '40.21', 'real', 'm'),
  (1, 48, 'bound_x2', '42.21', 'real', 'm'),
  (1, 48, 'mass_shift_x', '41.21', 'real', 'm'),
  (1, 48, 'mass_shift_y', '4.60', 'real', 'm'),
  (1, 48, 'mass_shift_z', '8.15', 'real', 'm'),
  (1, 48, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 48, 'm_f_s_x', '0', 'real', 'm'),
  (1, 49, 'name', 'Зерновая переборка', 'text', NULL),
  (1, 49, 'mass', '0', 'real', 't'),
  (1, 49, 'bound_x1', '25', 'frame', 'm'),
  (1, 49, 'bound_x2', '30', 'frame', 'm'),
  (1, 49, 'mass_shift_x', '-42.64', 'real', 'm'),
  (1, 49, 'mass_shift_y', '0', 'real', 'm'),
  (1, 49, 'mass_shift_z', '4.53', 'real', 'm'),
  (1, 49, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 49, 'm_f_s_x', '0', 'real', 'm');