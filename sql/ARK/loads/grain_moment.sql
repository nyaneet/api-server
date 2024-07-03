-- Кренящий момент от смещения сыпучего груза
-- H from buttom [m] | Volumetic heeling moment Mv grain [m4]
TRUNCATE TABLE grain_moment;

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
VALUES
-- Трюм
    (1, 1, 0.25, 973.9),
    (1, 1, 0.5, 1728.6),
    (1, 1, 0.75, 2339.5),
    (1, 1, 1, 2835.5),
    (1, 1, 1.25, 3230.5),
    (1, 1, 1.5, 3537.4),
    (1, 1, 1.75, 3761.6),
    (1, 1, 2, 3910.8),
    (1, 1, 2.25, 3990),
    (1, 1, 2.5, 4007.2),
    (1, 1, 2.75, 4007.2),
    (1, 1, 3, 4007.2),
    (1, 1, 3.25, 4007.2),
    (1, 1, 3.5, 4007.2),
    (1, 1, 3.75, 4007.2),
    (1, 1, 4, 4007.2),
    (1, 1, 4.25, 4007.2),
    (1, 1, 4.5, 4007.2),
    (1, 1, 4.75, 4007.2),
    (1, 1, 5, 4007.2),
    (1, 1, 5.25, 4007.2),
    (1, 1, 5.5, 4007.2),
    (1, 1, 5.65, 4007.2),
    (1, 1, 5.75, 4004.2),
    (1, 1, 6, 3948.1),
    (1, 1, 6.25, 3824.7),
    (1, 1, 6.5, 3628.1),
    (1, 1, 6.75, 3349.9),
    (1, 1, 7, 2990.6),
    (1, 1, 7.2, 2630.1),
    (1, 1, 7.4, 2630.1),

-- 1 отсек
    (1, 51, 0.25, 293.9),
    (1, 51, 0.5, 521.6),
    (1, 51, 0.75, 706),
    (1, 51, 1, 855.7),
    (1, 51, 1.25, 974.9),
    (1, 51, 1.5, 1067.5),
    (1, 51, 1.75, 1135.1),
    (1, 51, 2, 1180.2),
    (1, 51, 2.25, 1204.1),
    (1, 51, 2.5, 1209.2),
    (1, 51, 2.75, 1209.2),
    (1, 51, 3, 1209.2),
    (1, 51, 3.25, 1209.2),
    (1, 51, 3.5, 1209.2),
    (1, 51, 3.75, 1209.2),
    (1, 51, 4, 1209.2),
    (1, 51, 4.25, 1209.2),
    (1, 51, 4.5, 1209.2),
    (1, 51, 4.75, 1209.2),
    (1, 51, 5, 1209.2),
    (1, 51, 5.25, 1209.2),
    (1, 51, 5.5, 1209.2),
    (1, 51, 5.65, 1209.2),
    (1, 51, 5.75, 1208.3),
    (1, 51, 6, 1191.4),
    (1, 51, 6.25, 1154.2),
    (1, 51, 6.5, 1094.8),
    (1, 51, 6.75, 1010.9),
    (1, 51, 7, 902.5),
    (1, 51, 7.2, 793.7),
    (1, 51, 7.4, 793.7),

-- 2 отсек
    (1, 52, 0.25, 479.5),
    (1, 52, 0.5, 851.1),
    (1, 52, 0.75, 1151.9),
    (1, 52, 1, 1396.1),
    (1, 52, 1.25, 1590.6),
    (1, 52, 1.5, 1741.7),
    (1, 52, 1.75, 1852.1),
    (1, 52, 2, 1925.5),
    (1, 52, 2.25, 1964.5),
    (1, 52, 2.5, 1973),
    (1, 52, 2.75, 1973),
    (1, 52, 3, 1973),
    (1, 52, 3.25, 1973),
    (1, 52, 3.5, 1973),
    (1, 52, 3.75, 1973),
    (1, 52, 4, 1973),
    (1, 52, 4.25, 1973),
    (1, 52, 4.5, 1973),
    (1, 52, 4.75, 1973),
    (1, 52, 5, 1973),
    (1, 52, 5.25, 1973),
    (1, 52, 5.5, 1973),
    (1, 52, 5.65, 1973),
    (1, 52, 5.75, 1971.5),
    (1, 52, 6, 1943.9),
    (1, 52, 6.25, 1883.2),
    (1, 52, 6.5, 1786.3),
    (1, 52, 6.75, 1649.4),
    (1, 52, 7, 1472.5),
    (1, 52, 7.2, 1295),
    (1, 52, 7.4, 1295),

-- 3 отсек
    (1, 53, 0.25, 200.5),
    (1, 53, 0.5, 355.9),
    (1, 53, 0.75, 481.6),
    (1, 53, 1, 583.7),
    (1, 53, 1.25, 665),
    (1, 53, 1.5, 728.2),
    (1, 53, 1.75, 774.4),
    (1, 53, 2, 805.1),
    (1, 53, 2.25, 821.4),
    (1, 53, 2.5, 824.9),
    (1, 53, 2.75, 824.9),
    (1, 53, 3, 824.9),
    (1, 53, 3.25, 824.9),
    (1, 53, 3.5, 824.9),
    (1, 53, 3.75, 824.9),
    (1, 53, 4, 824.9),
    (1, 53, 4.25, 824.9),
    (1, 53, 4.5, 824.9),
    (1, 53, 4.75, 824.9),
    (1, 53, 5, 824.9),
    (1, 53, 5.25, 824.9),
    (1, 53, 5.5, 824.9),
    (1, 53, 5.65, 824.9),
    (1, 53, 5.75, 824.3),
    (1, 53, 6, 812.8),
    (1, 53, 6.25, 787.4),
    (1, 53, 6.5, 746.9),
    (1, 53, 6.75, 689.6),
    (1, 53, 7, 615.7),
    (1, 53, 7.2, 541.5),
    (1, 53, 7.4, 541.5),

-- 1+2 отсек
    (1, 54, 0.25, 773.4),
    (1, 54, 0.5, 1372.7),
    (1, 54, 0.75, 1857.9),
    (1, 54, 1, 2251.8),
    (1, 54, 1.25, 2565.5),
    (1, 54, 1.5, 2809.2),
    (1, 54, 1.75, 2987.2),
    (1, 54, 2, 3105.7),
    (1, 54, 2.25, 3168.6),
    (1, 54, 2.5, 3182.2),
    (1, 54, 2.75, 3182.2),
    (1, 54, 3, 3182.2),
    (1, 54, 3.25, 3182.2),
    (1, 54, 3.5, 3182.2),
    (1, 54, 3.75, 3182.2),
    (1, 54, 4, 3182.2),
    (1, 54, 4.25, 3182.2),
    (1, 54, 4.5, 3182.2),
    (1, 54, 4.75, 3182.2),
    (1, 54, 5, 3182.2),
    (1, 54, 5.25, 3182.2),
    (1, 54, 5.5, 3182.2),
    (1, 54, 5.65, 3182.2),
    (1, 54, 5.75, 3179.8),
    (1, 54, 6, 3135.3),
    (1, 54, 6.25, 3037.4),
    (1, 54, 6.5, 2881.1),
    (1, 54, 6.75, 2660.3),
    (1, 54, 7, 2375),
    (1, 54, 7.2, 2088.7),
    (1, 54, 7.4, 2088.7),

-- 2+3 отсек
    (1, 55, 0.25, 680),
    (1, 55, 0.5, 1207),
    (1, 55, 0.75, 1633.5),
    (1, 55, 1, 1979.8),
    (1, 55, 1.25, 2255.6),
    (1, 55, 1.5, 2469.9),
    (1, 55, 1.75, 2626.5),
    (1, 55, 2, 2730.6),
    (1, 55, 2.25, 2785.9),
    (1, 55, 2.5, 2797.9),
    (1, 55, 2.75, 2797.9),
    (1, 55, 3, 2797.9),
    (1, 55, 3.25, 2797.9),
    (1, 55, 3.5, 2797.9),
    (1, 55, 3.75, 2797.9),
    (1, 55, 4, 2797.9),
    (1, 55, 4.25, 2797.9),
    (1, 55, 4.5, 2797.9),
    (1, 55, 4.75, 2797.9),
    (1, 55, 5, 2797.9),
    (1, 55, 5.25, 2797.9),
    (1, 55, 5.5, 2797.9),
    (1, 55, 5.65, 2797.9),
    (1, 55, 5.75, 2795.8),
    (1, 55, 6, 2756.7),
    (1, 55, 6.25, 2670.6),
    (1, 55, 6.5, 2533.2),
    (1, 55, 6.75, 2339),
    (1, 55, 7, 2088.2),
    (1, 55, 7.2, 1836.5),
    (1, 55, 7.4, 1836.5);