-- Средняя осадка
-- зависимость от объемного водоизмещения
-- V, м3 | T, м
CREATE TABLE if not exists mean_draught (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  key FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT mean_draught_pk PRIMARY KEY (id), 
  CONSTRAINT mean_draught_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, key)
);

INSERT INTO mean_draught
    (ship_id, key, value)
VALUES
    (1, 11.50, 0.00),
    (1, 23.20, 0.01),
    (1, 35.10, 0.02),
    (1, 47.20, 0.03),
    (1, 59.40, 0.04),
    (1, 71.60, 0.05),
    (1, 83.90, 0.06),
    (1, 96.30, 0.07),
    (1, 108.70, 0.08),
    (1, 121.20, 0.09),
    (1, 133.80, 0.10),
    (1, 146.40, 0.11),
    (1, 159.10, 0.12),
    (1, 171.90, 0.13),
    (1, 184.60, 0.14),
    (1, 197.40, 0.15),
    (1, 210.30, 0.16),
    (1, 223.20, 0.17),
    (1, 236.10, 0.18),
    (1, 249.10, 0.19),
    (1, 262.10, 0.20),
    (1, 275.10, 0.21),
    (1, 288.20, 0.22),
    (1, 301.20, 0.23),
    (1, 314.40, 0.24),
    (1, 327.50, 0.25),
    (1, 340.70, 0.26),
    (1, 353.90, 0.27),
    (1, 367.20, 0.28),
    (1, 380.40, 0.29),
    (1, 393.70, 0.30),
    (1, 407.00, 0.31),
    (1, 420.40, 0.32),
    (1, 433.70, 0.33),
    (1, 447.10, 0.34),
    (1, 460.50, 0.35),
    (1, 474.00, 0.36),
    (1, 487.40, 0.37),
    (1, 500.90, 0.38),
    (1, 514.30, 0.39),
    (1, 527.80, 0.40),
    (1, 541.30, 0.41),
    (1, 554.80, 0.42),
    (1, 568.40, 0.43),
    (1, 581.90, 0.44),
    (1, 595.50, 0.45),
    (1, 609.10, 0.46),
    (1, 622.70, 0.47),
    (1, 636.30, 0.48),
    (1, 649.90, 0.49),
    (1, 663.60, 0.50),
    (1, 677.20, 0.51),
    (1, 690.90, 0.52),
    (1, 704.50, 0.53),
    (1, 718.20, 0.54),
    (1, 731.90, 0.55),
    (1, 745.60, 0.56),
    (1, 759.30, 0.57),
    (1, 773.00, 0.58),
    (1, 786.80, 0.59),
    (1, 800.60, 0.60),
    (1, 814.30, 0.61),
    (1, 828.10, 0.62),
    (1, 841.80, 0.63),
    (1, 855.60, 0.64),
    (1, 869.40, 0.65),
    (1, 883.20, 0.66),
    (1, 897.00, 0.67),
    (1, 910.90, 0.68),
    (1, 924.70, 0.69),
    (1, 938.50, 0.70),
    (1, 952.40, 0.71),
    (1, 966.20, 0.72),
    (1, 980.10, 0.73),
    (1, 994.00, 0.74),
    (1, 1007.90, 0.75),
    (1, 1021.80, 0.76),
    (1, 1035.70, 0.77),
    (1, 1049.60, 0.78),
    (1, 1063.50, 0.79),
    (1, 1077.40, 0.80),
    (1, 1091.30, 0.81),
    (1, 1105.30, 0.82),
    (1, 1119.20, 0.83),
    (1, 1133.20, 0.84),
    (1, 1147.10, 0.85),
    (1, 1161.10, 0.86),
    (1, 1175.10, 0.87),
    (1, 1189.10, 0.88),
    (1, 1203.10, 0.89),
    (1, 1217.10, 0.90),
    (1, 1231.10, 0.91),
    (1, 1245.20, 0.92),
    (1, 1259.20, 0.93),
    (1, 1273.20, 0.94),
    (1, 1287.30, 0.95),
    (1, 1301.30, 0.96),
    (1, 1315.40, 0.97),
    (1, 1329.50, 0.98),
    (1, 1343.50, 0.99),
    (1, 1357.60, 1.00),
    (1, 1371.70, 1.01),
    (1, 1385.80, 1.02),
    (1, 1399.90, 1.03),
    (1, 1414.00, 1.04),
    (1, 1428.10, 1.05),
    (1, 1442.20, 1.06),
    (1, 1456.30, 1.07),
    (1, 1470.40, 1.08),
    (1, 1484.60, 1.09),
    (1, 1498.70, 1.10),
    (1, 1512.90, 1.11),
    (1, 1527.10, 1.12),
    (1, 1541.20, 1.13),
    (1, 1555.40, 1.14),
    (1, 1569.60, 1.15),
    (1, 1583.80, 1.16),
    (1, 1598.00, 1.17),
    (1, 1612.20, 1.18),
    (1, 1626.40, 1.19),
    (1, 1640.60, 1.20),
    (1, 1654.90, 1.21),
    (1, 1669.10, 1.22),
    (1, 1683.30, 1.23),
    (1, 1697.50, 1.24),
    (1, 1711.70, 1.25),
    (1, 1725.90, 1.26),
    (1, 1740.20, 1.27),
    (1, 1754.50, 1.28),
    (1, 1768.80, 1.29),
    (1, 1783.00, 1.30),
    (1, 1797.30, 1.31),
    (1, 1811.60, 1.32),
    (1, 1825.90, 1.33),
    (1, 1840.30, 1.34),
    (1, 1854.60, 1.35),
    (1, 1868.90, 1.36),
    (1, 1883.20, 1.37),
    (1, 1897.50, 1.38),
    (1, 1911.90, 1.39),
    (1, 1926.30, 1.40),
    (1, 1940.60, 1.41),
    (1, 1955.00, 1.42),
    (1, 1969.40, 1.43),
    (1, 1983.80, 1.44),
    (1, 1998.30, 1.45),
    (1, 2012.70, 1.46),
    (1, 2027.10, 1.47),
    (1, 2041.50, 1.48),
    (1, 2056.00, 1.49),
    (1, 2070.40, 1.50),
    (1, 2084.90, 1.51),
    (1, 2099.40, 1.52),
    (1, 2113.80, 1.53),
    (1, 2128.30, 1.54),
    (1, 2142.80, 1.55),
    (1, 2157.30, 1.56),
    (1, 2171.80, 1.57),
    (1, 2186.30, 1.58),
    (1, 2200.80, 1.59),
    (1, 2215.30, 1.60),
    (1, 2229.80, 1.61),
    (1, 2244.30, 1.62),
    (1, 2258.80, 1.63),
    (1, 2273.30, 1.64),
    (1, 2287.80, 1.65),
    (1, 2302.40, 1.66),
    (1, 2316.90, 1.67),
    (1, 2331.40, 1.68),
    (1, 2346.00, 1.69),
    (1, 2360.50, 1.70),
    (1, 2375.10, 1.71),
    (1, 2389.60, 1.72),
    (1, 2404.20, 1.73),
    (1, 2418.70, 1.74),
    (1, 2433.30, 1.75),
    (1, 2447.90, 1.76),
    (1, 2462.50, 1.77),
    (1, 2477.10, 1.78),
    (1, 2491.70, 1.79),
    (1, 2506.30, 1.80),
    (1, 2520.90, 1.81),
    (1, 2535.50, 1.82),
    (1, 2550.10, 1.83),
    (1, 2564.80, 1.84),
    (1, 2579.40, 1.85),
    (1, 2594.00, 1.86),
    (1, 2608.70, 1.87),
    (1, 2623.30, 1.88),
    (1, 2637.90, 1.89),
    (1, 2652.60, 1.90),
    (1, 2667.20, 1.91),
    (1, 2681.90, 1.92),
    (1, 2696.50, 1.93),
    (1, 2711.20, 1.94),
    (1, 2725.80, 1.95),
    (1, 2740.50, 1.96),
    (1, 2755.20, 1.97),
    (1, 2769.80, 1.98),
    (1, 2784.50, 1.99),
    (1, 2799.20, 2.00),
    (1, 2813.90, 2.01),
    (1, 2828.60, 2.02),
    (1, 2843.30, 2.03),
    (1, 2858.00, 2.04),
    (1, 2872.70, 2.05),
    (1, 2887.40, 2.06),
    (1, 2902.10, 2.07),
    (1, 2916.80, 2.08),
    (1, 2931.50, 2.09),
    (1, 2946.30, 2.10),
    (1, 2961.00, 2.11),
    (1, 2975.80, 2.12),
    (1, 2990.50, 2.13),
    (1, 3005.30, 2.14),
    (1, 3020.00, 2.15),
    (1, 3034.80, 2.16),
    (1, 3049.60, 2.17),
    (1, 3064.30, 2.18),
    (1, 3079.10, 2.19),
    (1, 3093.90, 2.20),
    (1, 3108.70, 2.21),
    (1, 3123.40, 2.22),
    (1, 3138.20, 2.23),
    (1, 3153.00, 2.24),
    (1, 3167.80, 2.25),
    (1, 3182.60, 2.26),
    (1, 3197.40, 2.27),
    (1, 3212.20, 2.28),
    (1, 3227.00, 2.29),
    (1, 3241.80, 2.30),
    (1, 3256.60, 2.31),
    (1, 3271.50, 2.32),
    (1, 3286.30, 2.33),
    (1, 3301.10, 2.34),
    (1, 3315.90, 2.35),
    (1, 3330.80, 2.36),
    (1, 3345.60, 2.37),
    (1, 3360.40, 2.38),
    (1, 3375.30, 2.39),
    (1, 3390.10, 2.40),
    (1, 3405.00, 2.41),
    (1, 3419.80, 2.42),
    (1, 3434.70, 2.43),
    (1, 3449.60, 2.44),
    (1, 3464.40, 2.45),
    (1, 3479.30, 2.46),
    (1, 3494.20, 2.47),
    (1, 3509.10, 2.48),
    (1, 3524.00, 2.49),
    (1, 3538.90, 2.50),
    (1, 3553.80, 2.51),
    (1, 3568.70, 2.52),
    (1, 3583.60, 2.53),
    (1, 3598.50, 2.54),
    (1, 3613.40, 2.55),
    (1, 3628.40, 2.56),
    (1, 3643.30, 2.57),
    (1, 3658.20, 2.58),
    (1, 3673.10, 2.59),
    (1, 3688.10, 2.60),
    (1, 3703.00, 2.61),
    (1, 3718.00, 2.62),
    (1, 3732.90, 2.63),
    (1, 3747.90, 2.64),
    (1, 3762.80, 2.65),
    (1, 3777.80, 2.66),
    (1, 3792.80, 2.67),
    (1, 3807.70, 2.68),
    (1, 3822.70, 2.69),
    (1, 3837.70, 2.70),
    (1, 3852.60, 2.71),
    (1, 3867.60, 2.72),
    (1, 3882.60, 2.73),
    (1, 3897.60, 2.74),
    (1, 3912.60, 2.75),
    (1, 3927.60, 2.76),
    (1, 3942.60, 2.77),
    (1, 3957.60, 2.78),
    (1, 3972.70, 2.79),
    (1, 3987.70, 2.80),
    (1, 4002.70, 2.81),
    (1, 4017.80, 2.82),
    (1, 4032.80, 2.83),
    (1, 4047.90, 2.84),
    (1, 4062.90, 2.85),
    (1, 4078.00, 2.86),
    (1, 4093.00, 2.87),
    (1, 4108.10, 2.88),
    (1, 4123.20, 2.89),
    (1, 4138.20, 2.90),
    (1, 4153.30, 2.91),
    (1, 4168.40, 2.92),
    (1, 4183.50, 2.93),
    (1, 4198.50, 2.94),
    (1, 4213.60, 2.95),
    (1, 4228.70, 2.96),
    (1, 4243.80, 2.97),
    (1, 4258.90, 2.98),
    (1, 4274.00, 2.99),
    (1, 4289.10, 3.00),
    (1, 4304.30, 3.01),
    (1, 4319.40, 3.02),
    (1, 4334.50, 3.03),
    (1, 4349.70, 3.04),
    (1, 4364.80, 3.05),
    (1, 4380.00, 3.06),
    (1, 4395.10, 3.07),
    (1, 4410.30, 3.08),
    (1, 4425.50, 3.09),
    (1, 4440.60, 3.10),
    (1, 4455.80, 3.11),
    (1, 4471.00, 3.12),
    (1, 4486.20, 3.13),
    (1, 4501.40, 3.14),
    (1, 4516.60, 3.15),
    (1, 4531.80, 3.16),
    (1, 4547.00, 3.17),
    (1, 4562.20, 3.18),
    (1, 4577.40, 3.19),
    (1, 4592.60, 3.20),
    (1, 4607.80, 3.21),
    (1, 4623.00, 3.22),
    (1, 4638.20, 3.23),
    (1, 4653.40, 3.24),
    (1, 4668.70, 3.25),
    (1, 4683.90, 3.26),
    (1, 4699.20, 3.27),
    (1, 4714.40, 3.28),
    (1, 4729.70, 3.29),
    (1, 4744.90, 3.30),
    (1, 4760.20, 3.31),
    (1, 4775.50, 3.32),
    (1, 4790.80, 3.33),
    (1, 4806.10, 3.34),
    (1, 4821.40, 3.35),
    (1, 4836.70, 3.36),
    (1, 4852.00, 3.37),
    (1, 4867.30, 3.38),
    (1, 4882.60, 3.39),
    (1, 4897.90, 3.40),
    (1, 4913.20, 3.41),
    (1, 4928.60, 3.42),
    (1, 4943.90, 3.43),
    (1, 4959.20, 3.44),
    (1, 4974.60, 3.45),
    (1, 4990.00, 3.46),
    (1, 5005.30, 3.47),
    (1, 5020.70, 3.48),
    (1, 5036.10, 3.49),
    (1, 5051.50, 3.50),
    (1, 5066.90, 3.51),
    (1, 5082.30, 3.52),
    (1, 5097.70, 3.53),
    (1, 5113.10, 3.54),
    (1, 5128.50, 3.55),
    (1, 5144.00, 3.56),
    (1, 5159.40, 3.57),
    (1, 5174.80, 3.58),
    (1, 5190.30, 3.59),
    (1, 5205.70, 3.60),
    (1, 5221.20, 3.61),
    (1, 5236.70, 3.62),
    (1, 5252.10, 3.63),
    (1, 5267.60, 3.64),
    (1, 5283.10, 3.65),
    (1, 5298.60, 3.66),
    (1, 5314.10, 3.67),
    (1, 5329.60, 3.68),
    (1, 5345.10, 3.69),
    (1, 5360.60, 3.70),
    (1, 5376.10, 3.71),
    (1, 5391.60, 3.72),
    (1, 5407.20, 3.73),
    (1, 5422.70, 3.74),
    (1, 5438.20, 3.75),
    (1, 5453.70, 3.76),
    (1, 5469.20, 3.77),
    (1, 5484.80, 3.78),
    (1, 5500.30, 3.79),
    (1, 5515.80, 3.80),
    (1, 5531.30, 3.81),
    (1, 5546.90, 3.82),
    (1, 5562.40, 3.83),
    (1, 5577.90, 3.84),
    (1, 5593.50, 3.85),
    (1, 5609.00, 3.86),
    (1, 5624.50, 3.87),
    (1, 5640.10, 3.88),
    (1, 5655.60, 3.89),
    (1, 5671.20, 3.90),
    (1, 5686.70, 3.91),
    (1, 5702.20, 3.92),
    (1, 5717.80, 3.93),
    (1, 5733.30, 3.94),
    (1, 5748.90, 3.95),
    (1, 5764.40, 3.96),
    (1, 5780.00, 3.97),
    (1, 5795.50, 3.98),
    (1, 5811.10, 3.99),
    (1, 5826.60, 4.00),
    (1, 5842.20, 4.01),
    (1, 5857.70, 4.02),
    (1, 5873.30, 4.03),
    (1, 5888.80, 4.04),
    (1, 5904.40, 4.05),
    (1, 5920.00, 4.06),
    (1, 5935.50, 4.07),
    (1, 5951.10, 4.08),
    (1, 5966.60, 4.09),
    (1, 5982.20, 4.10),
    (1, 5997.80, 4.11),
    (1, 6013.30, 4.12),
    (1, 6028.90, 4.13),
    (1, 6044.50, 4.14),
    (1, 6060.00, 4.15),
    (1, 6075.60, 4.16),
    (1, 6091.20, 4.17),
    (1, 6106.70, 4.18),
    (1, 6122.30, 4.19),
    (1, 6137.90, 4.20),
    (1, 6153.50, 4.21),
    (1, 6169.00, 4.22),
    (1, 6184.60, 4.23),
    (1, 6200.20, 4.24),
    (1, 6215.70, 4.25),
    (1, 6231.30, 4.26),
    (1, 6246.90, 4.27),
    (1, 6262.50, 4.28),
    (1, 6278.10, 4.29),
    (1, 6293.60, 4.30),
    (1, 6309.20, 4.31),
    (1, 6324.80, 4.32),
    (1, 6340.40, 4.33),
    (1, 6356.00, 4.34),
    (1, 6371.60, 4.35),
    (1, 6387.10, 4.36),
    (1, 6402.70, 4.37),
    (1, 6418.30, 4.38),
    (1, 6433.90, 4.39),
    (1, 6449.50, 4.40),
    (1, 6465.10, 4.41),
    (1, 6480.70, 4.42),
    (1, 6496.30, 4.43),
    (1, 6511.90, 4.44),
    (1, 6527.40, 4.45),
    (1, 6543.00, 4.46),
    (1, 6558.60, 4.47),
    (1, 6574.20, 4.48),
    (1, 6589.80, 4.49),
    (1, 6605.40, 4.50),
    (1, 6621.00, 4.51),
    (1, 6636.60, 4.52),
    (1, 6652.20, 4.53),
    (1, 6667.80, 4.54),
    (1, 6683.40, 4.55),
    (1, 6699.00, 4.56),
    (1, 6714.60, 4.57),
    (1, 6730.20, 4.58),
    (1, 6745.80, 4.59),
    (1, 6761.50, 4.60),
    (1, 6777.10, 4.61),
    (1, 6792.70, 4.62),
    (1, 6808.30, 4.63),
    (1, 6823.90, 4.64),
    (1, 6839.50, 4.65),
    (1, 6855.10, 4.66),
    (1, 6870.70, 4.67),
    (1, 6886.30, 4.68),
    (1, 6902.00, 4.69),
    (1, 6917.60, 4.70),
    (1, 6933.20, 4.71),
    (1, 6948.80, 4.72),
    (1, 6964.40, 4.73),
    (1, 6980.00, 4.74),
    (1, 6995.70, 4.75),
    (1, 7011.30, 4.76),
    (1, 7026.90, 4.77),
    (1, 7042.50, 4.78),
    (1, 7058.10, 4.79),
    (1, 7073.80, 4.80),
    (1, 7089.40, 4.81),
    (1, 7105.00, 4.82),
    (1, 7120.60, 4.83),
    (1, 7136.30, 4.84),
    (1, 7151.90, 4.85),
    (1, 7167.50, 4.86),
    (1, 7183.10, 4.87),
    (1, 7198.80, 4.88),
    (1, 7214.40, 4.89),
    (1, 7230.00, 4.90),
    (1, 7245.70, 4.91),
    (1, 7261.30, 4.92),
    (1, 7276.90, 4.93),
    (1, 7292.60, 4.94),
    (1, 7308.20, 4.95),
    (1, 7323.80, 4.96),
    (1, 7339.50, 4.97),
    (1, 7355.10, 4.98),
    (1, 7370.70, 4.99),
    (1, 7386.40, 5.00),
    (1, 7402.00, 5.01),
    (1, 7417.70, 5.02),
    (1, 7433.30, 5.03),
    (1, 7449.00, 5.04),
    (1, 7464.60, 5.05),
    (1, 7480.20, 5.06),
    (1, 7495.90, 5.07),
    (1, 7511.50, 5.08),
    (1, 7527.20, 5.09),
    (1, 7542.80, 5.10),
    (1, 7558.50, 5.11),
    (1, 7574.10, 5.12),
    (1, 7589.80, 5.13),
    (1, 7605.40, 5.14),
    (1, 7621.10, 5.15),
    (1, 7636.70, 5.16),
    (1, 7652.40, 5.17),
    (1, 7668.00, 5.18),
    (1, 7683.70, 5.19),
    (1, 7699.30, 5.20),
    (1, 7715.00, 5.21),
    (1, 7730.60, 5.22),
    (1, 7746.30, 5.23),
    (1, 7761.90, 5.24),
    (1, 7777.60, 5.25),
    (1, 7793.30, 5.26),
    (1, 7808.90, 5.27),
    (1, 7824.60, 5.28),
    (1, 7840.20, 5.29),
    (1, 7855.90, 5.30),
    (1, 7871.60, 5.31),
    (1, 7887.20, 5.32),
    (1, 7902.90, 5.33),
    (1, 7918.60, 5.34),
    (1, 7934.20, 5.35),
    (1, 7949.90, 5.36),
    (1, 7965.60, 5.37),
    (1, 7981.20, 5.38),
    (1, 7996.90, 5.39),
    (1, 8012.60, 5.40),
    (1, 8028.20, 5.41),
    (1, 8043.90, 5.42),
    (1, 8059.60, 5.43),
    (1, 8075.20, 5.44),
    (1, 8090.90, 5.45),
    (1, 8106.60, 5.46),
    (1, 8122.30, 5.47),
    (1, 8137.90, 5.48),
    (1, 8153.60, 5.49),
    (1, 8169.30, 5.50),
    (1, 8185.00, 5.51),
    (1, 8200.60, 5.52),
    (1, 8216.30, 5.53),
    (1, 8232.00, 5.54),
    (1, 8247.70, 5.55),
    (1, 8263.30, 5.56),
    (1, 8279.00, 5.57),
    (1, 8294.70, 5.58),
    (1, 8310.40, 5.59),
    (1, 8326.10, 5.60),
    (1, 8341.80, 5.61),
    (1, 8357.40, 5.62),
    (1, 8373.10, 5.63),
    (1, 8388.80, 5.64),
    (1, 8404.50, 5.65),
    (1, 8420.20, 5.66),
    (1, 8435.90, 5.67),
    (1, 8451.60, 5.68),
    (1, 8467.20, 5.69),
    (1, 8482.90, 5.70),
    (1, 8498.60, 5.71),
    (1, 8514.30, 5.72),
    (1, 8530.00, 5.73),
    (1, 8545.70, 5.74),
    (1, 8561.40, 5.75),
    (1, 8577.10, 5.76),
    (1, 8592.80, 5.77),
    (1, 8608.50, 5.78),
    (1, 8624.20, 5.79),
    (1, 8639.90, 5.80),
    (1, 8655.60, 5.81),
    (1, 8671.30, 5.82),
    (1, 8687.00, 5.83),
    (1, 8702.60, 5.84),
    (1, 8718.30, 5.85),
    (1, 8734.00, 5.86),
    (1, 8749.70, 5.87),
    (1, 8765.40, 5.88),
    (1, 8781.10, 5.89),
    (1, 8796.80, 5.90),
    (1, 8812.60, 5.91),
    (1, 8828.30, 5.92),
    (1, 8844.00, 5.93),
    (1, 8859.70, 5.94),
    (1, 8875.40, 5.95),
    (1, 8891.10, 5.96),
    (1, 8906.80, 5.97),
    (1, 8922.50, 5.98),
    (1, 8938.20, 5.99),
    (1, 8953.90, 6.00),
    (1, 8969.60, 6.01),
    (1, 8985.30, 6.02),
    (1, 9001.00, 6.03),
    (1, 9016.70, 6.04),
    (1, 9032.40, 6.05),
    (1, 9048.20, 6.06),
    (1, 9063.90, 6.07),
    (1, 9079.60, 6.08),
    (1, 9095.30, 6.09),
    (1, 9111.00, 6.10),
    (1, 9126.70, 6.11),
    (1, 9142.40, 6.12),
    (1, 9158.20, 6.13),
    (1, 9173.90, 6.14),
    (1, 9189.60, 6.15),
    (1, 9205.30, 6.16),
    (1, 9221.00, 6.17),
    (1, 9236.70, 6.18),
    (1, 9252.50, 6.19),
    (1, 9268.20, 6.20),
    (1, 9283.90, 6.21),
    (1, 9299.60, 6.22),
    (1, 9315.30, 6.23),
    (1, 9331.10, 6.24),
    (1, 9346.80, 6.25),
    (1, 9362.50, 6.26),
    (1, 9378.20, 6.27),
    (1, 9393.90, 6.28),
    (1, 9409.70, 6.29),
    (1, 9425.40, 6.30),
    (1, 9441.10, 6.31),
    (1, 9456.80, 6.32),
    (1, 9472.60, 6.33),
    (1, 9488.30, 6.34),
    (1, 9504.00, 6.35),
    (1, 9519.80, 6.36),
    (1, 9535.50, 6.37),
    (1, 9551.20, 6.38),
    (1, 9566.90, 6.39),
    (1, 9582.70, 6.40),
    (1, 9598.40, 6.41),
    (1, 9614.10, 6.42),
    (1, 9629.90, 6.43),
    (1, 9645.60, 6.44),
    (1, 9661.30, 6.45),
    (1, 9677.10, 6.46),
    (1, 9692.80, 6.47),
    (1, 9708.50, 6.48),
    (1, 9724.30, 6.49),
    (1, 9740.00, 6.50),
    (1, 9755.70, 6.51),
    (1, 9771.50, 6.52),
    (1, 9787.20, 6.53),
    (1, 9802.90, 6.54),
    (1, 9818.70, 6.55),
    (1, 9834.40, 6.56),
    (1, 9850.10, 6.57),
    (1, 9865.90, 6.58),
    (1, 9881.60, 6.59),
    (1, 9897.40, 6.60),
    (1, 9913.10, 6.61),
    (1, 9928.80, 6.62),
    (1, 9944.60, 6.63),
    (1, 9960.30, 6.64),
    (1, 9976.10, 6.65),
    (1, 9991.80, 6.66),
    (1, 10007.50, 6.67),
    (1, 10023.30, 6.68),
    (1, 10039.00, 6.69),
    (1, 10054.80, 6.70),
    (1, 10070.50, 6.71),
    (1, 10086.30, 6.72),
    (1, 10102.00, 6.73),
    (1, 10117.80, 6.74),
    (1, 10133.50, 6.75),
    (1, 10149.30, 6.76),
    (1, 10165.00, 6.77),
    (1, 10180.70, 6.78),
    (1, 10196.50, 6.79),
    (1, 10212.20, 6.80),
    (1, 10228.00, 6.81),
    (1, 10243.40, 6.82),
    (1, 10258.20, 6.83),
    (1, 10272.50, 6.84),
    (1, 10286.10, 6.85),
    (1, 10299.20, 6.86),
    (1, 10309.90, 6.87),
    (1, 10320.70, 6.88),
    (1, 10331.50, 6.89),
    (1, 10342.30, 6.90),
    (1, 10353.00, 6.91),
    (1, 10363.80, 6.92),
    (1, 10374.60, 6.93),
    (1, 10385.40, 6.94),
    (1, 10396.20, 6.95),
    (1, 10406.90, 6.96),
    (1, 10417.70, 6.97),
    (1, 10428.50, 6.98),
    (1, 10439.30, 6.99),
    (1, 10450.10, 7.00),
    (1, 10460.80, 7.01),
    (1, 10471.60, 7.02),
    (1, 10482.40, 7.03),
    (1, 10493.20, 7.04),
    (1, 10504.00, 7.05),
    (1, 10514.80, 7.06),
    (1, 10525.50, 7.07),
    (1, 10536.30, 7.08),
    (1, 10547.10, 7.09),
    (1, 10557.90, 7.10),
    (1, 10568.70, 7.11),
    (1, 10579.40, 7.12),
    (1, 10590.20, 7.13),
    (1, 10601.00, 7.14),
    (1, 10611.80, 7.15),
    (1, 10622.60, 7.16),
    (1, 10633.40, 7.17),
    (1, 10644.10, 7.18),
    (1, 10654.90, 7.19),
    (1, 10665.70, 7.20),
    (1, 10676.50, 7.21),
    (1, 10687.30, 7.22),
    (1, 10698.10, 7.23),
    (1, 10708.80, 7.24),
    (1, 10719.60, 7.25),
    (1, 10730.40, 7.26),
    (1, 10741.20, 7.27),
    (1, 10752.00, 7.28),
    (1, 10762.80, 7.29),
    (1, 10773.50, 7.30),
    (1, 10784.30, 7.31),
    (1, 10795.10, 7.32),
    (1, 10805.90, 7.33),
    (1, 10816.70, 7.34),
    (1, 10827.50, 7.35),
    (1, 10838.20, 7.36),
    (1, 10849.00, 7.37),
    (1, 10859.80, 7.38),
    (1, 10870.60, 7.39),
    (1, 10881.40, 7.40),
    (1, 10892.20, 7.41),
    (1, 10902.90, 7.42),
    (1, 10913.70, 7.43),
    (1, 10924.50, 7.44),
    (1, 10935.30, 7.45),
    (1, 10946.10, 7.46),
    (1, 10956.90, 7.47),
    (1, 10967.70, 7.48),
    (1, 10978.50, 7.49),
    (1, 10989.20, 7.50),
    (1, 11000.00, 7.51),
    (1, 11010.80, 7.52),
    (1, 11021.60, 7.53),
    (1, 11032.40, 7.54),
    (1, 11043.20, 7.55),
    (1, 11054.00, 7.56),
    (1, 11064.70, 7.57),
    (1, 11075.50, 7.58),
    (1, 11086.30, 7.59),
    (1, 11097.10, 7.60),
    (1, 11107.90, 7.61),
    (1, 11118.70, 7.62),
    (1, 11129.50, 7.63),
    (1, 11140.30, 7.64),
    (1, 11151.00, 7.65),
    (1, 11161.80, 7.66),
    (1, 11172.60, 7.67),
    (1, 11183.40, 7.68),
    (1, 11194.20, 7.69),
    (1, 11205.00, 7.70),
    (1, 11215.80, 7.71),
    (1, 11226.60, 7.72),
    (1, 11237.40, 7.73),
    (1, 11248.10, 7.74),
    (1, 11258.90, 7.75),
    (1, 11269.70, 7.76),
    (1, 11280.50, 7.77),
    (1, 11291.30, 7.78),
    (1, 11302.10, 7.79),
    (1, 11312.90, 7.80),
    (1, 11323.70, 7.81),
    (1, 11334.50, 7.82),
    (1, 11345.30, 7.83),
    (1, 11356.00, 7.84),
    (1, 11366.80, 7.85),
    (1, 11377.60, 7.86),
    (1, 11388.40, 7.87),
    (1, 11399.20, 7.88),
    (1, 11410.00, 7.89),
    (1, 11420.80, 7.90),
    (1, 11431.60, 7.91),
    (1, 11442.40, 7.92),
    (1, 11453.20, 7.93),
    (1, 11464.00, 7.94),
    (1, 11474.70, 7.95),
    (1, 11485.50, 7.96),
    (1, 11496.30, 7.97),
    (1, 11507.10, 7.98),
    (1, 11517.90, 7.99),
    (1, 11528.70, 8.00),
    (1, 11539.50, 8.01),
    (1, 11550.30, 8.02),
    (1, 11561.10, 8.03),
    (1, 11571.90, 8.04),
    (1, 11582.70, 8.05),
    (1, 11593.50, 8.06),
    (1, 11604.20, 8.07),
    (1, 11615.00, 8.08),
    (1, 11625.80, 8.09),
    (1, 11636.60, 8.10),
    (1, 11647.40, 8.11),
    (1, 11658.20, 8.12),
    (1, 11669.00, 8.13),
    (1, 11679.80, 8.14),
    (1, 11690.60, 8.15),
    (1, 11701.40, 8.16),
    (1, 11712.20, 8.17),
    (1, 11723.00, 8.18),
    (1, 11733.80, 8.19),
    (1, 11744.60, 8.20),
    (1, 11755.40, 8.21),
    (1, 11766.20, 8.22),
    (1, 11777.00, 8.23),
    (1, 11787.70, 8.24),
    (1, 11790.20, 8.25),
    (1, 11792.50, 8.26),
    (1, 11795.00, 8.27),
    (1, 11797.40, 8.28),
    (1, 11799.80, 8.29),
    (1, 11802.20, 8.30),
    (1, 11804.60, 8.31),
    (1, 11807.00, 8.32),
    (1, 11809.40, 8.33),
    (1, 11811.80, 8.34),
    (1, 11814.20, 8.35),
    (1, 11816.60, 8.36),
    (1, 11819.00, 8.37),
    (1, 11821.40, 8.38),
    (1, 11823.80, 8.39),
    (1, 11826.20, 8.40),
    (1, 11828.60, 8.41),
    (1, 11831.00, 8.42),
    (1, 11833.40, 8.43),
    (1, 11835.80, 8.44),
    (1, 11838.20, 8.45),
    (1, 11840.60, 8.46),
    (1, 11843.00, 8.47),
    (1, 11845.40, 8.48),
    (1, 11847.80, 8.49),
    (1, 11850.20, 8.50),
    (1, 11852.60, 8.51),
    (1, 11855.00, 8.52),
    (1, 11857.40, 8.53),
    (1, 11859.90, 8.54),
    (1, 11862.30, 8.55),
    (1, 11864.70, 8.56),
    (1, 11867.10, 8.57),
    (1, 11869.50, 8.58),
    (1, 11871.90, 8.59),
    (1, 11874.30, 8.60),
    (1, 11876.70, 8.61),
    (1, 11879.10, 8.62),
    (1, 11881.50, 8.63),
    (1, 11883.90, 8.64),
    (1, 11886.30, 8.65),
    (1, 11888.70, 8.66),
    (1, 11891.10, 8.67),
    (1, 11893.50, 8.68),
    (1, 11895.90, 8.69),
    (1, 11898.30, 8.70),
    (1, 11900.80, 8.71),
    (1, 11903.20, 8.72),
    (1, 11905.60, 8.73),
    (1, 11908.00, 8.74),
    (1, 11910.40, 8.75),
    (1, 11912.80, 8.76),
    (1, 11915.20, 8.77),
    (1, 11917.60, 8.78),
    (1, 11920.00, 8.79),
    (1, 11922.40, 8.80),
    (1, 11924.80, 8.81),
    (1, 11927.20, 8.82),
    (1, 11929.60, 8.83),
    (1, 11932.10, 8.84),
    (1, 11934.50, 8.85),
    (1, 11936.90, 8.86),
    (1, 11939.30, 8.87),
    (1, 11941.70, 8.88),
    (1, 11944.10, 8.89),
    (1, 11946.50, 8.90),
    (1, 11948.90, 8.91),
    (1, 11951.30, 8.92),
    (1, 11953.70, 8.93),
    (1, 11956.20, 8.94),
    (1, 11958.60, 8.95),
    (1, 11961.00, 8.96),
    (1, 11963.40, 8.97),
    (1, 11965.80, 8.98),
    (1, 11968.20, 8.99),
    (1, 11970.60, 9.00),
    (1, 11973.00, 9.01),
    (1, 11975.40, 9.02),
    (1, 11977.80, 9.03),
    (1, 11980.30, 9.04),
    (1, 11982.70, 9.05),
    (1, 11985.10, 9.06),
    (1, 11987.50, 9.07),
    (1, 11989.90, 9.08),
    (1, 11992.30, 9.09),
    (1, 11994.70, 9.10),
    (1, 11997.10, 9.11),
    (1, 11999.50, 9.12),
    (1, 12002.00, 9.13),
    (1, 12004.40, 9.14),
    (1, 12006.80, 9.15),
    (1, 12009.20, 9.16),
    (1, 12011.60, 9.17),
    (1, 12014.00, 9.18),
    (1, 12016.40, 9.19),
    (1, 12018.80, 9.20),
    (1, 12021.30, 9.21),
    (1, 12023.70, 9.22),
    (1, 12026.10, 9.23),
    (1, 12028.50, 9.24),
    (1, 12030.90, 9.25),
    (1, 12033.30, 9.26),
    (1, 12035.70, 9.27),
    (1, 12038.10, 9.28),
    (1, 12040.60, 9.29),
    (1, 12043.00, 9.30),
    (1, 12045.40, 9.31),
    (1, 12047.80, 9.32),
    (1, 12050.20, 9.33),
    (1, 12052.60, 9.34),
    (1, 12055.10, 9.35),
    (1, 12057.50, 9.36),
    (1, 12059.90, 9.37),
    (1, 12062.30, 9.38),
    (1, 12064.70, 9.39),
    (1, 12067.10, 9.40),
    (1, 12069.50, 9.41),
    (1, 12072.00, 9.42),
    (1, 12074.40, 9.43),
    (1, 12076.80, 9.44),
    (1, 12079.20, 9.45),
    (1, 12081.60, 9.46),
    (1, 12084.00, 9.47),
    (1, 12086.50, 9.48),
    (1, 12088.90, 9.49),
    (1, 12091.30, 9.50),
    (1, 12093.70, 9.51),
    (1, 12096.10, 9.52),
    (1, 12098.50, 9.53),
    (1, 12100.80, 9.54),
    (1, 12103.00, 9.55),
    (1, 12105.20, 9.56),
    (1, 12107.20, 9.57),
    (1, 12109.10, 9.58),
    (1, 12111.00, 9.59),
    (1, 12112.70, 9.60),
    (1, 12114.30, 9.61),
    (1, 12115.80, 9.62),
    (1, 12117.20, 9.63),
    (1, 12118.50, 9.64),
    (1, 12119.60, 9.65),
    (1, 12120.70, 9.66),
    (1, 12121.70, 9.67),
    (1, 12122.50, 9.68),
    (1, 12123.30, 9.69),
    (1, 12123.90, 9.70);
    