-- Площадь поверхности парусности, m^2

INSERT INTO vertical_area_strength
  (ship_id, name, shift_z, value, bound_x1, bound_x2)
VALUES
  (1, 'Надводный борт',         4.13,  637.5,   -60.994,   59.356),
  (1, 'Кормовая часть',         9.34,  38.39,   -53.194,   -47.794),
  (1, 'Бак c фальшборотом',     8.23,  59.59,   37.006,    59.356),
  (1, 'Комингсы',               7.47,  107.9,   -44.194,   36.356),
  (1, 'Крышки люков',           8.51,  59.70,   33.106,    37.006),
  (1, 'Кран для люковых крышек',12.14, 13.53,   -60.994,   59.356),
  (1, 'Нос',                    12.58, 101.14,  37.656,    52.756),
  (1, 'Корма',                  10.13, 18.04,   -60.994,   -53.194),
  (1, 'Мачта носовая',          18.92, 0.86,    41.956,    52.156),
  (1, 'Мачта кормовая',         18.22, 1.25,    -50.194,   -48.394);