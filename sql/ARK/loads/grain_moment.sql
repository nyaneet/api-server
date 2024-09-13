-- Кренящий момент от смещения сыпучего груза
-- H from buttom [m] | Volumetic heeling moment Mv grain [m4]
TRUNCATE TABLE grain_moment;

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
VALUES
-- 25-51 
    (1, 51,  0.25, 219.8),
    (1, 51,  0.5, 403.3),
    (1, 51,  0.75, 549.4),
    (1, 51,  1, 663.4),
    (1, 51,  1.25, 750.4),
    (1, 51,  1.5, 814.6),
    (1, 51,  1.75, 860.3),
    (1, 51,  2, 891.2),
    (1, 51,  2.25, 910.6),
    (1, 51,  2.5, 921.4),
    (1, 51,  2.75, 926.3),
    (1, 51,  3, 927.3),
    (1, 51,  3.25, 926.3),
    (1, 51,  3.5, 924.6),
    (1, 51,  3.75, 923.4),
    (1, 51,  4, 923.1),
    (1, 51,  4.25, 924),
    (1, 51,  4.5, 926.1),
    (1, 51,  4.75, 928.7),
    (1, 51,  5, 930.8),
    (1, 51,  5.25, 931.3),
    (1, 51,  5.5, 928.4),
    (1, 51,  5.65, 924.1),
    (1, 51,  5.75, 919.9),
    (1, 51,  6, 903.5),
    (1, 51,  6.25, 876.3),
    (1, 51,  6.5, 834.9),
    (1, 51,  6.75, 775.8),
    (1, 51,  7,	695),
    (1, 51,  7.2, 611.7),
    (1, 51,  7.4, 389.2),

-- 51-113
    (1, 52,  0.25, 525.7),
    (1, 52,  0.5, 964.5),
    (1, 52,  0.75, 1313.9),
    (1, 52,  1, 1586.8),
    (1, 52,  1.25, 1794.6),
    (1, 52,  1.5, 1948.3),
    (1, 52,  1.75, 2057.6),
    (1, 52,  2, 2131.5),
    (1, 52,  2.25, 2177.8),
    (1, 52,  2.5, 2203.8),
    (1, 52,  2.75, 2215.3),
    (1, 52,  3, 2217.8),
    (1, 52,  3.25, 2215.4),
    (1, 52,  3.5, 2211.4),
    (1, 52,  3.75, 2208.4),
    (1, 52,  4, 2207.8),
    (1, 52,  4.25, 2210),
    (1, 52,  4.5, 2214.9),
    (1, 52,  4.75, 2221.1),
    (1, 52,  5, 2226.3),
    (1, 52,  5.25, 2227.4),
    (1, 52,  5.5, 2220.4),
    (1, 52,  5.65, 2210.2),
    (1, 52,  5.75, 2200.2),
    (1, 52,  6,	   2161),
    (1, 52,  6.25, 2095.8),
    (1, 52,  6.5, 1996.9),
    (1, 52,  6.75, 1855.6),
    (1, 52,  7,   1662.2),
    (1, 52,  7.2, 1463),
    (1, 52,  7.4, 930.9),

-- 113-151
    (1, 53,  0.25, 322.2),
    (1, 53,  0.5, 591.1),
    (1, 53,  0.75, 805.3),
    (1, 53,  1, 972.5),
    (1, 53,  1.25, 1099.9),
    (1, 53,  1.5, 1194.1),
    (1, 53,  1.75, 1261.1),
    (1, 53,  2, 1306.4),
    (1, 53,  2.25, 1334.8),
    (1, 53,  2.5, 1350.7),
    (1, 53,  2.75, 1357.8),
    (1, 53,  3, 1359.3),
    (1, 53,  3.25, 1357.8),
    (1, 53,  3.5, 1355.4),
    (1, 53,  3.75, 1353.5),
    (1, 53,  4, 1353.1),
    (1, 53,  4.25, 1354.5),
    (1, 53,  4.5, 1357.5),
    (1, 53,  4.75, 1361.3),
    (1, 53,  5, 1364.5),
    (1, 53,  5.25, 1365.2),
    (1, 53,  5.5, 1360.9),
    (1, 53,  5.65, 1354.6),
    (1, 53,  5.75, 1348.5),
    (1, 53,  6, 1324.5),
    (1, 53,  6.25, 1284.5),
    (1, 53,  6.5, 1223.9),
    (1, 53,  6.75, 1137.3),
    (1, 53,  7, 1018.8),
    (1, 53,  7.2, 896.7),
    (1, 53,  7.4, 570.6);
