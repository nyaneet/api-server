-- Запасы судна, 100% море отход
UPDATE compartment SET mass = 5.51 WHERE ship_id = 1 AND space_id = 24;  -- Цистерна расходного топлива 1 ЛБ
UPDATE compartment SET mass = 5.51 WHERE ship_id = 1 AND space_id = 25;  -- Цистерна расходного топлива 2 ЛБ
UPDATE compartment SET mass = 34.98 WHERE ship_id = 1 AND space_id = 26; -- Цистерна запасного топлива 1 Пр.Б
UPDATE compartment SET mass = 35.10 WHERE ship_id = 1 AND space_id = 27; -- Цистерна запасного топлива 2 ЛБ
UPDATE compartment SET mass = 53.42 WHERE ship_id = 1 AND space_id = 28;-- Цистерна запасного топлива 3 Пр.Б
UPDATE compartment SET mass = 53.42 WHERE ship_id = 1 AND space_id = 29;-- Цистерна запасного топлива 3 ЛБ
UPDATE compartment SET mass = 0.00 WHERE ship_id = 1 AND space_id = 30;  -- Цистерна переливная ДП
UPDATE compartment SET mass = 1.06 WHERE ship_id = 1 AND space_id = 31;  -- Цистерна расходного топлива АДГ Пр.Б
UPDATE compartment SET mass = 45.09 WHERE ship_id = 1 AND space_id = 32; -- Цистерна пресной воды 1 ДП (носовая)
UPDATE compartment SET mass = 3.94 WHERE ship_id = 1 AND space_id = 33;  -- Цистерна пресной воды 2 Пр.Б (кормовая)
UPDATE compartment SET mass = 3.71 WHERE ship_id = 1 AND space_id = 34;  -- Цистерна питьевой воды 1 ЛБ
UPDATE compartment SET mass = 3.71 WHERE ship_id = 1 AND space_id = 35;  -- Цистерна питьевой воды 2 ЛБ
UPDATE compartment SET mass = 2.49 WHERE ship_id = 1 AND space_id = 36;  -- Цистерна запасного масла ГД
UPDATE compartment SET mass = 2.49 WHERE ship_id = 1 AND space_id = 37;  -- Цистерна запасного масла ДГ
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 38;     -- Цистерна отработанного масла ЛБ
UPDATE compartment SET mass = 32.84 WHERE ship_id = 1 AND space_id = 39; -- Цистерна мочевины ДП
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 40; -- Цистерна нефтеостатков ДП
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 41; -- Шламовая цистерна Пр.Б
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 42; -- Сточная цистерна 1 ДП
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 43; -- Сточная цистерна 2 ЛБ

UPDATE compartment SET mass = 1.80 WHERE ship_id = 1 AND space_id = 47;  -- Экипаж и багаж
UPDATE compartment SET mass = 1.2 WHERE ship_id = 1 AND space_id = 48;   -- Провизия 

update bulkhead_place set bulkhead_id=1 where id=3; -- Зерновая переборка 1 28 шп.
update bulkhead_place set bulkhead_id=2 where id=4; -- Зерновая переборка 2 27 шп.

-- Балласт
UPDATE compartment SET mass = 60.3 WHERE ship_id = 1 AND space_id = 2;      -- Форпик Пр.Б
UPDATE compartment SET mass = 60.3 WHERE ship_id = 1 AND space_id = 3;      -- Форпик ЛБ
UPDATE compartment SET mass = 49.9 WHERE ship_id = 1 AND space_id = 4;      -- Балласт 1 Пр.Б
UPDATE compartment SET mass = 54.5 WHERE ship_id = 1 AND space_id = 5;      -- Балласт 1 ЛБ
UPDATE compartment SET mass = 118.5 WHERE ship_id = 1 AND space_id = 6;      -- Балласт 2 Пр.Б
UPDATE compartment SET mass = 118.5 WHERE ship_id = 1 AND space_id = 7;      -- Балласт 2 ЛБ
UPDATE compartment SET mass = 99.2 WHERE ship_id = 1 AND space_id = 8;      -- Балласт 2 ДД
UPDATE compartment SET mass = 118.5 WHERE ship_id = 1 AND space_id = 9;      -- Балласт 3 Пр.Б
UPDATE compartment SET mass = 118.5 WHERE ship_id = 1 AND space_id = 10;     -- Балласт 3 ЛБ
UPDATE compartment SET mass = 99.2 WHERE ship_id = 1 AND space_id = 11;     -- Балласт 3 ДД
UPDATE compartment SET mass = 190.9 WHERE ship_id = 1 AND space_id = 12;     -- Балласт 4 Пр.Б
UPDATE compartment SET mass = 190.9 WHERE ship_id = 1 AND space_id = 13;     -- Балласт 4 ЛБ
UPDATE compartment SET mass = 159.8 WHERE ship_id = 1 AND space_id = 14;     -- Балласт 4 ДД
UPDATE compartment SET mass = 190.9 WHERE ship_id = 1 AND space_id = 15;     -- Балласт 5 Пр.Б
UPDATE compartment SET mass = 190.9 WHERE ship_id = 1 AND space_id = 16;     -- Балласт 5 ЛБ
UPDATE compartment SET mass = 159.8 WHERE ship_id = 1 AND space_id = 17;     -- Балласт 5 ДД
UPDATE compartment SET mass = 125.1 WHERE ship_id = 1 AND space_id = 18;     -- Балласт 6 Пр.Б
UPDATE compartment SET mass = 125.1 WHERE ship_id = 1 AND space_id = 19;     -- Балласт 6 ЛБ
UPDATE compartment SET mass = 104.8 WHERE ship_id = 1 AND space_id = 20;     -- Балласт 6 ДД
UPDATE compartment SET mass = 104.8 WHERE ship_id = 1 AND space_id = 21;     -- Балласт 7 Пр.Б
UPDATE compartment SET mass = 93.2 WHERE ship_id = 1 AND space_id = 22;     -- Балласт 7 ЛБ
UPDATE compartment SET mass = 97.5 WHERE ship_id = 1 AND space_id = 23;     -- Балласт 7 ДД

-- TODO Контейнеры