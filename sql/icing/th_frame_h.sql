-- Площадь обледенения горизонтальный поверхностей, m^2

INSERT INTO icing_area
  (ship_id, name, area_value, area_type, ound_x1, bound_x2, bound_type, unit)
VALUES
  (1, 'Палуба бака 17 шпация', 'h', 31.52, '94.7104', '100.6298', 'real', 'm'),
  (1, 'Палуба бака 18 шпация', 'h', 18.01, '100.6298', '106.5494', 'real', 'm'),
  (1, 'Палуба бака 19 шпация', 'h', 25.05, '106.5494', '112.4686', 'real', 'm'),
  (1, 'Палуба бака 20 шпация', 'h', 60.62, '112.4686', '118.388', 'real', 'm'),
  (1, 'Верхняя палуба', 'h', 1334, '-3', '153', 'frame', 'm'), 
  (1, 'Палуба ходового мостика', 'h', 197.8, '150', '175', 'frame', 'm'), 
  (1, 'Спасательная шлюпка', 'h', 13.9, '-2', '10', 'frame', 'm'),  
  (1, 'Посадочная площадка', 'h', 4.2, '-2', '5', 'frame', 'm'),  
  (1, 'Дежурная шлюпка', 'h', 6.6, '152', '155', 'frame', 'm'),  
  (1, 'Дымовые трубы', 'h', 12.1, '12', '16', 'frame', 'm');
