-- Отстояние центра тяжести ватерлинии по длине от миделя
-- (Абсцисса центра тяжести площади ватерлинии)
-- в зависимости от объемного водоизмещения
-- V, м3 | Xf, м
CREATE TABLE if not exists center_waterline (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  key FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT center_waterline_pk PRIMARY KEY (id),
  CONSTRAINT center_waterline_unique UNIQUE (ship_id, key)
);

INSERT INTO center_waterline
    (project_id, ship_id, key, value)
VALUES
    (NULL, 1, 11.50, -0.193),
    (NULL, 1, 23.20, -0.099),
    (NULL, 1, 35.10, -0.044),
    (NULL, 1, 47.20, 0.009),
    (NULL, 1, 59.40, 0.086),
    (NULL, 1, 71.60, 0.158),
    (NULL, 1, 83.90, 0.135),
    (NULL, 1, 96.30, 0.153),
    (NULL, 1, 108.70, 0.196),
    (NULL, 1, 121.20, 0.234),
    (NULL, 1, 133.80, 0.267),
    (NULL, 1, 146.40, 0.167),
    (NULL, 1, 159.10, 0.181),
    (NULL, 1, 171.90, 0.210),
    (NULL, 1, 184.60, 0.235),
    (NULL, 1, 197.40, 0.257),
    (NULL, 1, 210.30, 0.277),
    (NULL, 1, 223.20, 0.308),
    (NULL, 1, 236.10, 0.184),
    (NULL, 1, 249.10, 0.203),
    (NULL, 1, 262.10, 0.221),
    (NULL, 1, 275.10, 0.240),
    (NULL, 1, 288.20, 0.256),
    (NULL, 1, 301.20, 0.270),
    (NULL, 1, 314.40, 0.283),
    (NULL, 1, 327.50, 0.294),
    (NULL, 1, 340.70, 0.166),
    (NULL, 1, 353.90, 0.177),
    (NULL, 1, 367.20, 0.123),
    (NULL, 1, 380.40, 0.133),
    (NULL, 1, 393.70, 0.169),
    (NULL, 1, 407.00, 0.179),
    (NULL, 1, 420.40, 0.190),
    (NULL, 1, 433.70, 0.199),
    (NULL, 1, 447.10, 0.207),
    (NULL, 1, 460.50, 0.085),
    (NULL, 1, 474.00, 0.084),
    (NULL, 1, 487.40, 0.091),
    (NULL, 1, 500.90, 0.098),
    (NULL, 1, 514.30, 0.105),
    (NULL, 1, 527.80, 0.111),
    (NULL, 1, 541.30, 0.116),
    (NULL, 1, 554.80, 0.122),
    (NULL, 1, 568.40, 0.128),
    (NULL, 1, 581.90, 0.134),
    (NULL, 1, 595.50, 0.140),
    (NULL, 1, 609.10, 0.016),
    (NULL, 1, 622.70, 0.015),
    (NULL, 1, 636.30, 0.022),
    (NULL, 1, 649.90, 0.029),
    (NULL, 1, 663.60, 0.059),
    (NULL, 1, 677.20, 0.061),
    (NULL, 1, 690.90, 0.063),
    (NULL, 1, 704.50, 0.065),
    (NULL, 1, 718.20, 0.068),
    (NULL, 1, 731.90, 0.070),
    (NULL, 1, 745.60, 0.072),
    (NULL, 1, 759.30, 0.075),
    (NULL, 1, 773.00, 0.077),
    (NULL, 1, 786.80, -0.056),
    (NULL, 1, 800.60, -0.054),
    (NULL, 1, 814.30, -0.050),
    (NULL, 1, 828.10, -0.047),
    (NULL, 1, 841.80, -0.043),
    (NULL, 1, 855.60, -0.040),
    (NULL, 1, 869.40, -0.036),
    (NULL, 1, 883.20, -0.033),
    (NULL, 1, 897.00, -0.030),
    (NULL, 1, 910.90, -0.028),
    (NULL, 1, 924.70, -0.026),
    (NULL, 1, 938.50, -0.024),
    (NULL, 1, 952.40, -0.023),
    (NULL, 1, 966.20, -0.022),
    (NULL, 1, 980.10, -0.128),
    (NULL, 1, 994.00, -0.127),
    (NULL, 1, 1007.90, -0.125),
    (NULL, 1, 1021.80, -0.124),
    (NULL, 1, 1035.70, -0.123),
    (NULL, 1, 1049.60, -0.121),
    (NULL, 1, 1063.50, -0.120),
    (NULL, 1, 1077.40, -0.118),
    (NULL, 1, 1091.30, -0.117),
    (NULL, 1, 1105.30, -0.116),
    (NULL, 1, 1119.20, -0.115),
    (NULL, 1, 1133.20, -0.115),
    (NULL, 1, 1147.10, -0.113),
    (NULL, 1, 1161.10, -0.112),
    (NULL, 1, 1175.10, -0.111),
    (NULL, 1, 1189.10, -0.238),
    (NULL, 1, 1203.10, -0.243),
    (NULL, 1, 1217.10, -0.242),
    (NULL, 1, 1231.10, -0.242),
    (NULL, 1, 1245.20, -0.241),
    (NULL, 1, 1259.20, -0.241),
    (NULL, 1, 1273.20, -0.241),
    (NULL, 1, 1287.30, -0.241),
    (NULL, 1, 1301.30, -0.241),
    (NULL, 1, 1315.40, -0.241),
    (NULL, 1, 1329.50, -0.241),
    (NULL, 1, 1343.50, -0.242),
    (NULL, 1, 1357.60, -0.242),
    (NULL, 1, 1371.70, -0.211),
    (NULL, 1, 1385.80, -0.212),
    (NULL, 1, 1399.90, -0.212),
    (NULL, 1, 1414.00, -0.225),
    (NULL, 1, 1428.10, -0.249),
    (NULL, 1, 1442.20, -0.349),
    (NULL, 1, 1456.30, -0.351),
    (NULL, 1, 1470.40, -0.352),
    (NULL, 1, 1484.60, -0.353),
    (NULL, 1, 1498.70, -0.355),
    (NULL, 1, 1512.90, -0.356),
    (NULL, 1, 1527.10, -0.357),
    (NULL, 1, 1541.20, -0.358),
    (NULL, 1, 1555.40, -0.359),
    (NULL, 1, 1569.60, -0.360),
    (NULL, 1, 1583.80, -0.361),
    (NULL, 1, 1598.00, -0.362),
    (NULL, 1, 1612.20, -0.363),
    (NULL, 1, 1626.40, -0.364),
    (NULL, 1, 1640.60, -0.370),
    (NULL, 1, 1654.90, -0.373),
    (NULL, 1, 1669.10, -0.373),
    (NULL, 1, 1683.30, -0.375),
    (NULL, 1, 1697.50, -0.384),
    (NULL, 1, 1711.70, -0.408),
    (NULL, 1, 1725.90, -0.435),
    (NULL, 1, 1740.20, -0.470),
    (NULL, 1, 1754.50, -0.514),
    (NULL, 1, 1768.80, -0.516),
    (NULL, 1, 1783.00, -0.519),
    (NULL, 1, 1797.30, -0.521),
    (NULL, 1, 1811.60, -0.524),
    (NULL, 1, 1825.90, -0.527),
    (NULL, 1, 1840.30, -0.529),
    (NULL, 1, 1854.60, -0.532),
    (NULL, 1, 1868.90, -0.537),
    (NULL, 1, 1883.20, -0.535),
    (NULL, 1, 1897.50, -0.532),
    (NULL, 1, 1911.90, -0.530),
    (NULL, 1, 1926.30, -0.737),
    (NULL, 1, 1940.60, -0.735),
    (NULL, 1, 1955.00, -0.735),
    (NULL, 1, 1969.40, -0.734),
    (NULL, 1, 1983.80, -0.734),
    (NULL, 1, 1998.30, -0.745),
    (NULL, 1, 2012.70, -0.755),
    (NULL, 1, 2027.10, -0.766),
    (NULL, 1, 2041.50, -0.779),
    (NULL, 1, 2056.00, -0.769),
    (NULL, 1, 2070.40, -0.790),
    (NULL, 1, 2084.90, -0.820),
    (NULL, 1, 2099.40, -0.888),
    (NULL, 1, 2113.80, -0.884),
    (NULL, 1, 2128.30, -0.881),
    (NULL, 1, 2142.80, -0.878),
    (NULL, 1, 2157.30, -0.875),
    (NULL, 1, 2171.80, -0.873),
    (NULL, 1, 2186.30, -0.870),
    (NULL, 1, 2200.80, -0.868),
    (NULL, 1, 2215.30, -0.866),
    (NULL, 1, 2229.80, -0.864),
    (NULL, 1, 2244.30, -0.863),
    (NULL, 1, 2258.80, -0.863),
    (NULL, 1, 2273.30, -0.862),
    (NULL, 1, 2287.80, -0.862),
    (NULL, 1, 2302.40, -0.862),
    (NULL, 1, 2316.90, -0.862),
    (NULL, 1, 2331.40, -0.874),
    (NULL, 1, 2346.00, -0.881),
    (NULL, 1, 2360.50, -0.888),
    (NULL, 1, 2375.10, -0.895),
    (NULL, 1, 2389.60, -0.902),
    (NULL, 1, 2404.20, -0.910),
    (NULL, 1, 2418.70, -0.918),
    (NULL, 1, 2433.30, -0.928),
    (NULL, 1, 2447.90, -0.939),
    (NULL, 1, 2462.50, -0.953),
    (NULL, 1, 2477.10, -0.969),
    (NULL, 1, 2491.70, -0.994),
    (NULL, 1, 2506.30, -1.033),
    (NULL, 1, 2520.90, -1.031),
    (NULL, 1, 2535.50, -1.029),
    (NULL, 1, 2550.10, -1.028),
    (NULL, 1, 2564.80, -1.027),
    (NULL, 1, 2579.40, -1.004),
    (NULL, 1, 2594.00, -1.002),
    (NULL, 1, 2608.70, -1.001),
    (NULL, 1, 2623.30, -0.999),
    (NULL, 1, 2637.90, -0.998),
    (NULL, 1, 2652.60, -0.997),
    (NULL, 1, 2667.20, -0.997),
    (NULL, 1, 2681.90, -0.996),
    (NULL, 1, 2696.50, -0.996),
    (NULL, 1, 2711.20, -1.005),
    (NULL, 1, 2725.80, -1.012),
    (NULL, 1, 2740.50, -1.018),
    (NULL, 1, 2755.20, -1.022),
    (NULL, 1, 2769.80, -1.026),
    (NULL, 1, 2784.50, -1.031),
    (NULL, 1, 2799.20, -1.037),
    (NULL, 1, 2813.90, -1.043),
    (NULL, 1, 2828.60, -1.049),
    (NULL, 1, 2843.30, -1.055),
    (NULL, 1, 2858.00, -1.061),
    (NULL, 1, 2872.70, -1.068),
    (NULL, 1, 2887.40, -1.077),
    (NULL, 1, 2902.10, -1.088),
    (NULL, 1, 2916.80, -1.098),
    (NULL, 1, 2931.50, -1.108),
    (NULL, 1, 2946.30, -1.129),
    (NULL, 1, 2961.00, -1.162),
    (NULL, 1, 2975.80, -1.166),
    (NULL, 1, 2990.50, -1.165),
    (NULL, 1, 3005.30, -1.164),
    (NULL, 1, 3020.00, -1.164),
    (NULL, 1, 3034.80, -1.163),
    (NULL, 1, 3049.60, -1.162),
    (NULL, 1, 3064.30, -1.162),
    (NULL, 1, 3079.10, -1.161),
    (NULL, 1, 3093.90, -1.161),
    (NULL, 1, 3108.70, -1.160),
    (NULL, 1, 3123.40, -1.160),
    (NULL, 1, 3138.20, -1.167),
    (NULL, 1, 3153.00, -1.175),
    (NULL, 1, 3167.80, -1.180),
    (NULL, 1, 3182.60, -1.184),
    (NULL, 1, 3197.40, -1.188),
    (NULL, 1, 3212.20, -1.192),
    (NULL, 1, 3227.00, -1.196),
    (NULL, 1, 3241.80, -1.188),
    (NULL, 1, 3256.60, -1.193),
    (NULL, 1, 3271.50, -1.198),
    (NULL, 1, 3286.30, -1.202),
    (NULL, 1, 3301.10, -1.206),
    (NULL, 1, 3315.90, -1.211),
    (NULL, 1, 3330.80, -1.215),
    (NULL, 1, 3345.60, -1.208),
    (NULL, 1, 3360.40, -1.215),
    (NULL, 1, 3375.30, -1.222),
    (NULL, 1, 3390.10, -1.231),
    (NULL, 1, 3405.00, -1.239),
    (NULL, 1, 3419.80, -1.248),
    (NULL, 1, 3434.70, -1.256),
    (NULL, 1, 3449.60, -1.266),
    (NULL, 1, 3464.40, -1.287),
    (NULL, 1, 3479.30, -1.312),
    (NULL, 1, 3494.20, -1.322),
    (NULL, 1, 3509.10, -1.322),
    (NULL, 1, 3524.00, -1.322),
    (NULL, 1, 3538.90, -1.323),
    (NULL, 1, 3553.80, -1.325),
    (NULL, 1, 3568.70, -1.336),
    (NULL, 1, 3583.60, -1.341),
    (NULL, 1, 3598.50, -1.346),
    (NULL, 1, 3613.40, -1.351),
    (NULL, 1, 3628.40, -1.355),
    (NULL, 1, 3643.30, -1.360),
    (NULL, 1, 3658.20, -1.365),
    (NULL, 1, 3673.10, -1.369),
    (NULL, 1, 3688.10, -1.374),
    (NULL, 1, 3703.00, -1.378),
    (NULL, 1, 3718.00, -1.383),
    (NULL, 1, 3732.90, -1.388),
    (NULL, 1, 3747.90, -1.393),
    (NULL, 1, 3762.80, -1.398),
    (NULL, 1, 3777.80, -1.403),
    (NULL, 1, 3792.80, -1.407),
    (NULL, 1, 3807.70, -1.413),
    (NULL, 1, 3822.70, -1.419),
    (NULL, 1, 3837.70, -1.426),
    (NULL, 1, 3852.60, -1.434),
    (NULL, 1, 3867.60, -1.442),
    (NULL, 1, 3882.60, -1.450),
    (NULL, 1, 3897.60, -1.458),
    (NULL, 1, 3912.60, -1.465),
    (NULL, 1, 3927.60, -1.475),
    (NULL, 1, 3942.60, -1.500),
    (NULL, 1, 3957.60, -1.523),
    (NULL, 1, 3972.70, -1.552),
    (NULL, 1, 3987.70, -1.565),
    (NULL, 1, 4002.70, -1.561),
    (NULL, 1, 4017.80, -1.567),
    (NULL, 1, 4032.80, -1.572),
    (NULL, 1, 4047.90, -1.578),
    (NULL, 1, 4062.90, -1.583),
    (NULL, 1, 4078.00, -1.588),
    (NULL, 1, 4093.00, -1.594),
    (NULL, 1, 4108.10, -1.599),
    (NULL, 1, 4123.20, -1.605),
    (NULL, 1, 4138.20, -1.611),
    (NULL, 1, 4153.30, -1.612),
    (NULL, 1, 4168.40, -1.618),
    (NULL, 1, 4183.50, -1.625),
    (NULL, 1, 4198.50, -1.632),
    (NULL, 1, 4213.60, -1.639),
    (NULL, 1, 4228.70, -1.646),
    (NULL, 1, 4243.80, -1.654),
    (NULL, 1, 4258.90, -1.675),
    (NULL, 1, 4274.00, -1.688),
    (NULL, 1, 4289.10, -1.702),
    (NULL, 1, 4304.30, -1.715),
    (NULL, 1, 4319.40, -1.730),
    (NULL, 1, 4334.50, -1.746),
    (NULL, 1, 4349.70, -1.758),
    (NULL, 1, 4364.80, -1.776),
    (NULL, 1, 4380.00, -1.806),
    (NULL, 1, 4395.10, -1.818),
    (NULL, 1, 4410.30, -1.824),
    (NULL, 1, 4425.50, -1.830),
    (NULL, 1, 4440.60, -1.836),
    (NULL, 1, 4455.80, -1.843),
    (NULL, 1, 4471.00, -1.849),
    (NULL, 1, 4486.20, -1.856),
    (NULL, 1, 4501.40, -1.863),
    (NULL, 1, 4516.60, -1.869),
    (NULL, 1, 4531.80, -1.889),
    (NULL, 1, 4547.00, -1.901),
    (NULL, 1, 4562.20, -1.857),
    (NULL, 1, 4577.40, -1.869),
    (NULL, 1, 4592.60, -1.882),
    (NULL, 1, 4607.80, -1.895),
    (NULL, 1, 4623.00, -1.906),
    (NULL, 1, 4638.20, -1.919),
    (NULL, 1, 4653.40, -1.933),
    (NULL, 1, 4668.70, -1.947),
    (NULL, 1, 4683.90, -1.961),
    (NULL, 1, 4699.20, -1.979),
    (NULL, 1, 4714.40, -2.011),
    (NULL, 1, 4729.70, -2.018),
    (NULL, 1, 4744.90, -2.037),
    (NULL, 1, 4760.20, -2.048),
    (NULL, 1, 4775.50, -2.058),
    (NULL, 1, 4790.80, -2.069),
    (NULL, 1, 4806.10, -2.080),
    (NULL, 1, 4821.40, -2.090),
    (NULL, 1, 4836.70, -2.100),
    (NULL, 1, 4852.00, -2.111),
    (NULL, 1, 4867.30, -2.122),
    (NULL, 1, 4882.60, -2.133),
    (NULL, 1, 4897.90, -2.147),
    (NULL, 1, 4913.20, -2.174),
    (NULL, 1, 4928.60, -2.193),
    (NULL, 1, 4943.90, -2.212),
    (NULL, 1, 4959.20, -2.234),
    (NULL, 1, 4974.60, -2.270),
    (NULL, 1, 4990.00, -2.280),
    (NULL, 1, 5005.30, -2.290),
    (NULL, 1, 5020.70, -2.304),
    (NULL, 1, 5036.10, -2.319),
    (NULL, 1, 5051.50, -2.335),
    (NULL, 1, 5066.90, -2.350),
    (NULL, 1, 5082.30, -2.366),
    (NULL, 1, 5097.70, -2.383),
    (NULL, 1, 5113.10, -2.401),
    (NULL, 1, 5128.50, -2.418),
    (NULL, 1, 5144.00, -2.435),
    (NULL, 1, 5159.40, -2.475),
    (NULL, 1, 5174.80, -2.484),
    (NULL, 1, 5190.30, -2.495),
    (NULL, 1, 5205.70, -2.506),
    (NULL, 1, 5221.20, -2.519),
    (NULL, 1, 5236.70, -2.532),
    (NULL, 1, 5252.10, -2.546),
    (NULL, 1, 5267.60, -2.561),
    (NULL, 1, 5283.10, -2.599),
    (NULL, 1, 5298.60, -2.607),
    (NULL, 1, 5314.10, -2.615),
    (NULL, 1, 5329.60, -2.627),
    (NULL, 1, 5345.10, -2.645),
    (NULL, 1, 5360.60, -2.644),
    (NULL, 1, 5376.10, -2.642),
    (NULL, 1, 5391.60, -2.640),
    (NULL, 1, 5407.20, -2.639),
    (NULL, 1, 5422.70, -2.637),
    (NULL, 1, 5438.20, -2.635),
    (NULL, 1, 5453.70, -2.633),
    (NULL, 1, 5469.20, -2.631),
    (NULL, 1, 5484.80, -2.630),
    (NULL, 1, 5500.30, -2.628),
    (NULL, 1, 5515.80, -2.626),
    (NULL, 1, 5531.30, -2.624),
    (NULL, 1, 5546.90, -2.622),
    (NULL, 1, 5562.40, -2.620),
    (NULL, 1, 5577.90, -2.618),
    (NULL, 1, 5593.50, -2.616),
    (NULL, 1, 5609.00, -2.614),
    (NULL, 1, 5624.50, -2.612),
    (NULL, 1, 5640.10, -2.610),
    (NULL, 1, 5655.60, -2.608),
    (NULL, 1, 5671.20, -2.605),
    (NULL, 1, 5686.70, -2.603),
    (NULL, 1, 5702.20, -2.601),
    (NULL, 1, 5717.80, -2.598),
    (NULL, 1, 5733.30, -2.596),
    (NULL, 1, 5748.90, -2.594),
    (NULL, 1, 5764.40, -2.591),
    (NULL, 1, 5780.00, -2.589),
    (NULL, 1, 5795.50, -2.586),
    (NULL, 1, 5811.10, -2.584),
    (NULL, 1, 5826.60, -2.582),
    (NULL, 1, 5842.20, -2.579),
    (NULL, 1, 5857.70, -2.577),
    (NULL, 1, 5873.30, -2.574),
    (NULL, 1, 5888.80, -2.572),
    (NULL, 1, 5904.40, -2.569),
    (NULL, 1, 5920.00, -2.566),
    (NULL, 1, 5935.50, -2.564),
    (NULL, 1, 5951.10, -2.561),
    (NULL, 1, 5966.60, -2.559),
    (NULL, 1, 5982.20, -2.556),
    (NULL, 1, 5997.80, -2.554),
    (NULL, 1, 6013.30, -2.551),
    (NULL, 1, 6028.90, -2.548),
    (NULL, 1, 6044.50, -2.546),
    (NULL, 1, 6060.00, -2.543),
    (NULL, 1, 6075.60, -2.540),
    (NULL, 1, 6091.20, -2.538),
    (NULL, 1, 6106.70, -2.535),
    (NULL, 1, 6122.30, -2.532),
    (NULL, 1, 6137.90, -2.530),
    (NULL, 1, 6153.50, -2.527),
    (NULL, 1, 6169.00, -2.524),
    (NULL, 1, 6184.60, -2.521),
    (NULL, 1, 6200.20, -2.519),
    (NULL, 1, 6215.70, -2.516),
    (NULL, 1, 6231.30, -2.513),
    (NULL, 1, 6246.90, -2.510),
    (NULL, 1, 6262.50, -2.507),
    (NULL, 1, 6278.10, -2.505),
    (NULL, 1, 6293.60, -2.502),
    (NULL, 1, 6309.20, -2.499),
    (NULL, 1, 6324.80, -2.496),
    (NULL, 1, 6340.40, -2.493),
    (NULL, 1, 6356.00, -2.490),
    (NULL, 1, 6371.60, -2.487),
    (NULL, 1, 6387.10, -2.485),
    (NULL, 1, 6402.70, -2.482),
    (NULL, 1, 6418.30, -2.479),
    (NULL, 1, 6433.90, -2.476),
    (NULL, 1, 6449.50, -2.473),
    (NULL, 1, 6465.10, -2.470),
    (NULL, 1, 6480.70, -2.467),
    (NULL, 1, 6496.30, -2.464),
    (NULL, 1, 6511.90, -2.461),
    (NULL, 1, 6527.40, -2.458),
    (NULL, 1, 6543.00, -2.455),
    (NULL, 1, 6558.60, -2.452),
    (NULL, 1, 6574.20, -2.449),
    (NULL, 1, 6589.80, -2.446),
    (NULL, 1, 6605.40, -2.443),
    (NULL, 1, 6621.00, -2.440),
    (NULL, 1, 6636.60, -2.437),
    (NULL, 1, 6652.20, -2.434),
    (NULL, 1, 6667.80, -2.431),
    (NULL, 1, 6683.40, -2.429),
    (NULL, 1, 6699.00, -2.426),
    (NULL, 1, 6714.60, -2.423),
    (NULL, 1, 6730.20, -2.420),
    (NULL, 1, 6745.80, -2.417),
    (NULL, 1, 6761.50, -2.414),
    (NULL, 1, 6777.10, -2.411),
    (NULL, 1, 6792.70, -2.408),
    (NULL, 1, 6808.30, -2.405),
    (NULL, 1, 6823.90, -2.402),
    (NULL, 1, 6839.50, -2.399),
    (NULL, 1, 6855.10, -2.396),
    (NULL, 1, 6870.70, -2.393),
    (NULL, 1, 6886.30, -2.390),
    (NULL, 1, 6902.00, -2.387),
    (NULL, 1, 6917.60, -2.384),
    (NULL, 1, 6933.20, -2.381),
    (NULL, 1, 6948.80, -2.378),
    (NULL, 1, 6964.40, -2.375),
    (NULL, 1, 6980.00, -2.372),
    (NULL, 1, 6995.70, -2.369),
    (NULL, 1, 7011.30, -2.366),
    (NULL, 1, 7026.90, -2.363),
    (NULL, 1, 7042.50, -2.361),
    (NULL, 1, 7058.10, -2.358),
    (NULL, 1, 7073.80, -2.355),
    (NULL, 1, 7089.40, -2.352),
    (NULL, 1, 7105.00, -2.349),
    (NULL, 1, 7120.60, -2.346),
    (NULL, 1, 7136.30, -2.343),
    (NULL, 1, 7151.90, -2.339),
    (NULL, 1, 7167.50, -2.336),
    (NULL, 1, 7183.10, -2.333),
    (NULL, 1, 7198.80, -2.330),
    (NULL, 1, 7214.40, -2.327),
    (NULL, 1, 7230.00, -2.325),
    (NULL, 1, 7245.70, -2.322),
    (NULL, 1, 7261.30, -2.319),
    (NULL, 1, 7276.90, -2.316),
    (NULL, 1, 7292.60, -2.314),
    (NULL, 1, 7308.20, -2.311),
    (NULL, 1, 7323.80, -2.308),
    (NULL, 1, 7339.50, -2.305),
    (NULL, 1, 7355.10, -2.303),
    (NULL, 1, 7370.70, -2.300),
    (NULL, 1, 7386.40, -2.297),
    (NULL, 1, 7402.00, -2.294),
    (NULL, 1, 7417.70, -2.292),
    (NULL, 1, 7433.30, -2.289),
    (NULL, 1, 7449.00, -2.286),
    (NULL, 1, 7464.60, -2.283),
    (NULL, 1, 7480.20, -2.281),
    (NULL, 1, 7495.90, -2.278),
    (NULL, 1, 7511.50, -2.275),
    (NULL, 1, 7527.20, -2.273),
    (NULL, 1, 7542.80, -2.270),
    (NULL, 1, 7558.50, -2.267),
    (NULL, 1, 7574.10, -2.264),
    (NULL, 1, 7589.80, -2.262),
    (NULL, 1, 7605.40, -2.259),
    (NULL, 1, 7621.10, -2.256),
    (NULL, 1, 7636.70, -2.253),
    (NULL, 1, 7652.40, -2.250),
    (NULL, 1, 7668.00, -2.248),
    (NULL, 1, 7683.70, -2.245),
    (NULL, 1, 7699.30, -2.242),
    (NULL, 1, 7715.00, -2.240),
    (NULL, 1, 7730.60, -2.237),
    (NULL, 1, 7746.30, -2.234),
    (NULL, 1, 7761.90, -2.232),
    (NULL, 1, 7777.60, -2.229),
    (NULL, 1, 7793.30, -2.226),
    (NULL, 1, 7808.90, -2.224),
    (NULL, 1, 7824.60, -2.221),
    (NULL, 1, 7840.20, -2.218),
    (NULL, 1, 7855.90, -2.215),
    (NULL, 1, 7871.60, -2.213),
    (NULL, 1, 7887.20, -2.210),
    (NULL, 1, 7902.90, -2.207),
    (NULL, 1, 7918.60, -2.205),
    (NULL, 1, 7934.20, -2.202),
    (NULL, 1, 7949.90, -2.200),
    (NULL, 1, 7965.60, -2.197),
    (NULL, 1, 7981.20, -2.195),
    (NULL, 1, 7996.90, -2.192),
    (NULL, 1, 8012.60, -2.189),
    (NULL, 1, 8028.20, -2.187),
    (NULL, 1, 8043.90, -2.184),
    (NULL, 1, 8059.60, -2.182),
    (NULL, 1, 8075.20, -2.179),
    (NULL, 1, 8090.90, -2.177),
    (NULL, 1, 8106.60, -2.174),
    (NULL, 1, 8122.30, -2.171),
    (NULL, 1, 8137.90, -2.169),
    (NULL, 1, 8153.60, -2.166),
    (NULL, 1, 8169.30, -2.164),
    (NULL, 1, 8185.00, -2.161),
    (NULL, 1, 8200.60, -2.159),
    (NULL, 1, 8216.30, -2.156),
    (NULL, 1, 8232.00, -2.154),
    (NULL, 1, 8247.70, -2.152),
    (NULL, 1, 8263.30, -2.149),
    (NULL, 1, 8279.00, -2.147),
    (NULL, 1, 8294.70, -2.145),
    (NULL, 1, 8310.40, -2.142),
    (NULL, 1, 8326.10, -2.140),
    (NULL, 1, 8341.80, -2.138),
    (NULL, 1, 8357.40, -2.136),
    (NULL, 1, 8373.10, -2.133),
    (NULL, 1, 8388.80, -2.131),
    (NULL, 1, 8404.50, -2.129),
    (NULL, 1, 8420.20, -2.126),
    (NULL, 1, 8435.90, -2.124),
    (NULL, 1, 8451.60, -2.122),
    (NULL, 1, 8467.20, -2.119),
    (NULL, 1, 8482.90, -2.117),
    (NULL, 1, 8498.60, -2.115),
    (NULL, 1, 8514.30, -2.112),
    (NULL, 1, 8530.00, -2.110),
    (NULL, 1, 8545.70, -2.108),
    (NULL, 1, 8561.40, -2.105),
    (NULL, 1, 8577.10, -2.103),
    (NULL, 1, 8592.80, -2.101),
    (NULL, 1, 8608.50, -2.098),
    (NULL, 1, 8624.20, -2.096),
    (NULL, 1, 8639.90, -2.094),
    (NULL, 1, 8655.60, -2.091),
    (NULL, 1, 8671.30, -2.089),
    (NULL, 1, 8687.00, -2.087),
    (NULL, 1, 8702.60, -2.085),
    (NULL, 1, 8718.30, -2.083),
    (NULL, 1, 8734.00, -2.081),
    (NULL, 1, 8749.70, -2.079),
    (NULL, 1, 8765.40, -2.077),
    (NULL, 1, 8781.10, -2.074),
    (NULL, 1, 8796.80, -2.072),
    (NULL, 1, 8812.60, -2.070),
    (NULL, 1, 8828.30, -2.068),
    (NULL, 1, 8844.00, -2.066),
    (NULL, 1, 8859.70, -2.064),
    (NULL, 1, 8875.40, -2.062),
    (NULL, 1, 8891.10, -2.060),
    (NULL, 1, 8906.80, -2.058),
    (NULL, 1, 8922.50, -2.056),
    (NULL, 1, 8938.20, -2.053),
    (NULL, 1, 8953.90, -2.051),
    (NULL, 1, 8969.60, -2.049),
    (NULL, 1, 8985.30, -2.047),
    (NULL, 1, 9001.00, -2.045),
    (NULL, 1, 9016.70, -2.043),
    (NULL, 1, 9032.40, -2.041),
    (NULL, 1, 9048.20, -2.039),
    (NULL, 1, 9063.90, -2.037),
    (NULL, 1, 9079.60, -2.035),
    (NULL, 1, 9095.30, -2.032),
    (NULL, 1, 9111.00, -2.030),
    (NULL, 1, 9126.70, -2.028),
    (NULL, 1, 9142.40, -2.026),
    (NULL, 1, 9158.20, -2.024),
    (NULL, 1, 9173.90, -2.022),
    (NULL, 1, 9189.60, -2.020),
    (NULL, 1, 9205.30, -2.018),
    (NULL, 1, 9221.00, -2.016),
    (NULL, 1, 9236.70, -2.014),
    (NULL, 1, 9252.50, -2.012),
    (NULL, 1, 9268.20, -2.010),
    (NULL, 1, 9283.90, -2.008),
    (NULL, 1, 9299.60, -2.007),
    (NULL, 1, 9315.30, -2.005),
    (NULL, 1, 9331.10, -2.003),
    (NULL, 1, 9346.80, -2.001),
    (NULL, 1, 9362.50, -1.999),
    (NULL, 1, 9378.20, -1.997),
    (NULL, 1, 9393.90, -1.995),
    (NULL, 1, 9409.70, -1.993),
    (NULL, 1, 9425.40, -1.992),
    (NULL, 1, 9441.10, -1.990),
    (NULL, 1, 9456.80, -1.988),
    (NULL, 1, 9472.60, -1.987),
    (NULL, 1, 9488.30, -1.985),
    (NULL, 1, 9504.00, -1.983),
    (NULL, 1, 9519.80, -1.982),
    (NULL, 1, 9535.50, -1.980),
    (NULL, 1, 9551.20, -1.978),
    (NULL, 1, 9566.90, -1.976),
    (NULL, 1, 9582.70, -1.975),
    (NULL, 1, 9598.40, -1.973),
    (NULL, 1, 9614.10, -1.971),
    (NULL, 1, 9629.90, -1.970),
    (NULL, 1, 9645.60, -1.968),
    (NULL, 1, 9661.30, -1.966),
    (NULL, 1, 9677.10, -1.964),
    (NULL, 1, 9692.80, -1.963),
    (NULL, 1, 9708.50, -1.961),
    (NULL, 1, 9724.30, -1.960),
    (NULL, 1, 9740.00, -1.958),
    (NULL, 1, 9755.70, -1.956),
    (NULL, 1, 9771.50, -1.955),
    (NULL, 1, 9787.20, -1.953),
    (NULL, 1, 9802.90, -1.952),
    (NULL, 1, 9818.70, -1.950),
    (NULL, 1, 9834.40, -1.948),
    (NULL, 1, 9850.10, -1.947),
    (NULL, 1, 9865.90, -1.945),
    (NULL, 1, 9881.60, -1.943),
    (NULL, 1, 9897.40, -1.942),
    (NULL, 1, 9913.10, -1.940),
    (NULL, 1, 9928.80, -1.939),
    (NULL, 1, 9944.60, -1.937),
    (NULL, 1, 9960.30, -1.935),
    (NULL, 1, 9976.10, -1.934),
    (NULL, 1, 9991.80, -1.932),
    (NULL, 1, 10007.50, -1.931),
    (NULL, 1, 10023.30, -1.929),
    (NULL, 1, 10039.00, -1.927),
    (NULL, 1, 10054.80, -1.926),
    (NULL, 1, 10070.50, -1.924),
    (NULL, 1, 10086.30, -1.922),
    (NULL, 1, 10102.00, -1.921),
    (NULL, 1, 10117.80, -1.919),
    (NULL, 1, 10133.50, -1.918),
    (NULL, 1, 10149.30, -1.916),
    (NULL, 1, 10165.00, -1.914),
    (NULL, 1, 10180.70, -1.913),
    (NULL, 1, 10196.50, -1.911),
    (NULL, 1, 10212.20, -1.910),
    (NULL, 1, 10228.00, -947.081),
    (NULL, 1, 10243.40, -1082.704),
    (NULL, 1, 10258.20, -1281.802),
    (NULL, 1, 10272.50, -1602.446),
    (NULL, 1, 10286.10, -2204.986),
    (NULL, 1, 10299.20, -4093.948),
    (NULL, 1, 10309.90, 7.573),
    (NULL, 1, 10320.70, 7.574),
    (NULL, 1, 10331.50, 7.574),
    (NULL, 1, 10342.30, 7.575),
    (NULL, 1, 10353.00, 7.575),
    (NULL, 1, 10363.80, 7.576),
    (NULL, 1, 10374.60, 7.576),
    (NULL, 1, 10385.40, 7.577),
    (NULL, 1, 10396.20, 7.577),
    (NULL, 1, 10406.90, 7.577),
    (NULL, 1, 10417.70, 7.578),
    (NULL, 1, 10428.50, 7.578),
    (NULL, 1, 10439.30, 7.579),
    (NULL, 1, 10450.10, 7.579),
    (NULL, 1, 10460.80, 7.580),
    (NULL, 1, 10471.60, 7.580),
    (NULL, 1, 10482.40, 7.581),
    (NULL, 1, 10493.20, 7.581),
    (NULL, 1, 10504.00, 7.582),
    (NULL, 1, 10514.80, 7.582),
    (NULL, 1, 10525.50, 7.583),
    (NULL, 1, 10536.30, 7.583),
    (NULL, 1, 10547.10, 7.584),
    (NULL, 1, 10557.90, 7.584),
    (NULL, 1, 10568.70, 7.585),
    (NULL, 1, 10579.40, 7.585),
    (NULL, 1, 10590.20, 7.586),
    (NULL, 1, 10601.00, 7.586),
    (NULL, 1, 10611.80, 7.587),
    (NULL, 1, 10622.60, 7.587),
    (NULL, 1, 10633.40, 7.588),
    (NULL, 1, 10644.10, 7.588),
    (NULL, 1, 10654.90, 7.589),
    (NULL, 1, 10665.70, 7.589),
    (NULL, 1, 10676.50, 7.590),
    (NULL, 1, 10687.30, 7.590),
    (NULL, 1, 10698.10, 7.591),
    (NULL, 1, 10708.80, 7.591),
    (NULL, 1, 10719.60, 7.592),
    (NULL, 1, 10730.40, 7.592),
    (NULL, 1, 10741.20, 7.593),
    (NULL, 1, 10752.00, 7.593),
    (NULL, 1, 10762.80, 7.594),
    (NULL, 1, 10773.50, 7.594),
    (NULL, 1, 10784.30, 7.595),
    (NULL, 1, 10795.10, 7.595),
    (NULL, 1, 10805.90, 7.596),
    (NULL, 1, 10816.70, 7.596),
    (NULL, 1, 10827.50, 7.597),
    (NULL, 1, 10838.20, 7.597),
    (NULL, 1, 10849.00, 7.598),
    (NULL, 1, 10859.80, 7.598),
    (NULL, 1, 10870.60, 7.598),
    (NULL, 1, 10881.40, 7.599),
    (NULL, 1, 10892.20, 7.599),
    (NULL, 1, 10902.90, 7.600),
    (NULL, 1, 10913.70, 7.600),
    (NULL, 1, 10924.50, 7.601),
    (NULL, 1, 10935.30, 7.601),
    (NULL, 1, 10946.10, 7.602),
    (NULL, 1, 10956.90, 7.602),
    (NULL, 1, 10967.70, 7.603),
    (NULL, 1, 10978.50, 7.603),
    (NULL, 1, 10989.20, 7.604),
    (NULL, 1, 11000.00, 7.604),
    (NULL, 1, 11010.80, 7.605),
    (NULL, 1, 11021.60, 7.605),
    (NULL, 1, 11032.40, 7.606),
    (NULL, 1, 11043.20, 7.606),
    (NULL, 1, 11054.00, 7.607),
    (NULL, 1, 11064.70, 7.607),
    (NULL, 1, 11075.50, 7.608),
    (NULL, 1, 11086.30, 7.608),
    (NULL, 1, 11097.10, 7.609),
    (NULL, 1, 11107.90, 7.609),
    (NULL, 1, 11118.70, 7.610),
    (NULL, 1, 11129.50, 7.610),
    (NULL, 1, 11140.30, 7.611),
    (NULL, 1, 11151.00, 7.611),
    (NULL, 1, 11161.80, 7.612),
    (NULL, 1, 11172.60, 7.612),
    (NULL, 1, 11183.40, 7.613),
    (NULL, 1, 11194.20, 7.613),
    (NULL, 1, 11205.00, 7.614),
    (NULL, 1, 11215.80, 7.614),
    (NULL, 1, 11226.60, 7.615),
    (NULL, 1, 11237.40, 7.615),
    (NULL, 1, 11248.10, 7.616),
    (NULL, 1, 11258.90, 7.616),
    (NULL, 1, 11269.70, 7.617),
    (NULL, 1, 11280.50, 7.617),
    (NULL, 1, 11291.30, 7.618),
    (NULL, 1, 11302.10, 7.618),
    (NULL, 1, 11312.90, 7.619),
    (NULL, 1, 11323.70, 7.619),
    (NULL, 1, 11334.50, 7.620),
    (NULL, 1, 11345.30, 7.620),
    (NULL, 1, 11356.00, 7.621),
    (NULL, 1, 11366.80, 7.621),
    (NULL, 1, 11377.60, 7.621),
    (NULL, 1, 11388.40, 7.622),
    (NULL, 1, 11399.20, 7.622),
    (NULL, 1, 11410.00, 7.623),
    (NULL, 1, 11420.80, 7.623),
    (NULL, 1, 11431.60, 7.624),
    (NULL, 1, 11442.40, 7.624),
    (NULL, 1, 11453.20, 7.625),
    (NULL, 1, 11464.00, 7.625),
    (NULL, 1, 11474.70, 7.626),
    (NULL, 1, 11485.50, 7.626),
    (NULL, 1, 11496.30, 7.627),
    (NULL, 1, 11507.10, 7.627),
    (NULL, 1, 11517.90, 7.628),
    (NULL, 1, 11528.70, 7.628),
    (NULL, 1, 11539.50, 7.629),
    (NULL, 1, 11550.30, 7.629),
    (NULL, 1, 11561.10, 7.630),
    (NULL, 1, 11571.90, 7.630),
    (NULL, 1, 11582.70, 7.631),
    (NULL, 1, 11593.50, 7.631),
    (NULL, 1, 11604.20, 7.632),
    (NULL, 1, 11615.00, 7.632),
    (NULL, 1, 11625.80, 7.633),
    (NULL, 1, 11636.60, 7.633),
    (NULL, 1, 11647.40, 7.634),
    (NULL, 1, 11658.20, 7.634),
    (NULL, 1, 11669.00, 7.635),
    (NULL, 1, 11679.80, 7.635),
    (NULL, 1, 11690.60, 7.636),
    (NULL, 1, 11701.40, 7.636),
    (NULL, 1, 11712.20, 7.637),
    (NULL, 1, 11723.00, 7.637),
    (NULL, 1, 11733.80, 7.638),
    (NULL, 1, 11744.60, 7.638),
    (NULL, 1, 11755.40, 7.639),
    (NULL, 1, 11766.20, 7.639),
    (NULL, 1, 11777.00, 7.640),
    (NULL, 1, 11787.70, 7.640),
    (NULL, 1, 11790.20, 48.071),
    (NULL, 1, 11792.50, 48.071),
    (NULL, 1, 11795.00, 48.071),
    (NULL, 1, 11797.40, 48.072),
    (NULL, 1, 11799.80, 48.072),
    (NULL, 1, 11802.20, 48.072),
    (NULL, 1, 11804.60, 48.073),
    (NULL, 1, 11807.00, 48.073),
    (NULL, 1, 11809.40, 48.073),
    (NULL, 1, 11811.80, 48.074),
    (NULL, 1, 11814.20, 48.074),
    (NULL, 1, 11816.60, 48.074),
    (NULL, 1, 11819.00, 48.075),
    (NULL, 1, 11821.40, 48.075),
    (NULL, 1, 11823.80, 48.075),
    (NULL, 1, 11826.20, 48.076),
    (NULL, 1, 11828.60, 48.076),
    (NULL, 1, 11831.00, 48.077),
    (NULL, 1, 11833.40, 48.077),
    (NULL, 1, 11835.80, 48.077),
    (NULL, 1, 11838.20, 48.078),
    (NULL, 1, 11840.60, 48.078),
    (NULL, 1, 11843.00, 48.078),
    (NULL, 1, 11845.40, 48.079),
    (NULL, 1, 11847.80, 48.079),
    (NULL, 1, 11850.20, 48.079),
    (NULL, 1, 11852.60, 48.080),
    (NULL, 1, 11855.00, 48.080),
    (NULL, 1, 11857.40, 48.080),
    (NULL, 1, 11859.90, 48.081),
    (NULL, 1, 11862.30, 48.081),
    (NULL, 1, 11864.70, 48.081),
    (NULL, 1, 11867.10, 48.082),
    (NULL, 1, 11869.50, 48.082),
    (NULL, 1, 11871.90, 48.083),
    (NULL, 1, 11874.30, 48.083),
    (NULL, 1, 11876.70, 48.083),
    (NULL, 1, 11879.10, 48.084),
    (NULL, 1, 11881.50, 48.084),
    (NULL, 1, 11883.90, 48.084),
    (NULL, 1, 11886.30, 48.085),
    (NULL, 1, 11888.70, 48.085),
    (NULL, 1, 11891.10, 48.085),
    (NULL, 1, 11893.50, 48.086),
    (NULL, 1, 11895.90, 48.086),
    (NULL, 1, 11898.30, 48.086),
    (NULL, 1, 11900.80, 48.087),
    (NULL, 1, 11903.20, 48.087),
    (NULL, 1, 11905.60, 48.087),
    (NULL, 1, 11908.00, 48.088),
    (NULL, 1, 11910.40, 48.088),
    (NULL, 1, 11912.80, 48.088),
    (NULL, 1, 11915.20, 48.089),
    (NULL, 1, 11917.60, 48.089),
    (NULL, 1, 11920.00, 48.090),
    (NULL, 1, 11922.40, 48.090),
    (NULL, 1, 11924.80, 48.090),
    (NULL, 1, 11927.20, 48.091),
    (NULL, 1, 11929.60, 48.091),
    (NULL, 1, 11932.10, 48.091),
    (NULL, 1, 11934.50, 48.092),
    (NULL, 1, 11936.90, 48.092),
    (NULL, 1, 11939.30, 48.092),
    (NULL, 1, 11941.70, 48.093),
    (NULL, 1, 11944.10, 48.093),
    (NULL, 1, 11946.50, 48.093),
    (NULL, 1, 11948.90, 48.094),
    (NULL, 1, 11951.30, 48.094),
    (NULL, 1, 11953.70, 48.094),
    (NULL, 1, 11956.20, 48.095),
    (NULL, 1, 11958.60, 48.095),
    (NULL, 1, 11961.00, 48.096),
    (NULL, 1, 11963.40, 48.096),
    (NULL, 1, 11965.80, 48.096),
    (NULL, 1, 11968.20, 48.097),
    (NULL, 1, 11970.60, 48.097),
    (NULL, 1, 11973.00, 48.097),
    (NULL, 1, 11975.40, 48.098),
    (NULL, 1, 11977.80, 48.098),
    (NULL, 1, 11980.30, 48.098),
    (NULL, 1, 11982.70, 48.099),
    (NULL, 1, 11985.10, 48.099),
    (NULL, 1, 11987.50, 48.099),
    (NULL, 1, 11989.90, 48.100),
    (NULL, 1, 11992.30, 48.100),
    (NULL, 1, 11994.70, 48.100),
    (NULL, 1, 11997.10, 48.101),
    (NULL, 1, 11999.50, 48.101),
    (NULL, 1, 12002.00, 48.101),
    (NULL, 1, 12004.40, 48.102),
    (NULL, 1, 12006.80, 48.102),
    (NULL, 1, 12009.20, 48.103),
    (NULL, 1, 12011.60, 48.103),
    (NULL, 1, 12014.00, 48.103),
    (NULL, 1, 12016.40, 48.104),
    (NULL, 1, 12018.80, 48.104),
    (NULL, 1, 12021.30, 48.104),
    (NULL, 1, 12023.70, 48.105),
    (NULL, 1, 12026.10, 48.105),
    (NULL, 1, 12028.50, 48.105),
    (NULL, 1, 12030.90, 48.106),
    (NULL, 1, 12033.30, 48.106),
    (NULL, 1, 12035.70, 48.106),
    (NULL, 1, 12038.10, 48.107),
    (NULL, 1, 12040.60, 48.107),
    (NULL, 1, 12043.00, 48.107),
    (NULL, 1, 12045.40, 48.108),
    (NULL, 1, 12047.80, 48.108),
    (NULL, 1, 12050.20, 48.109),
    (NULL, 1, 12052.60, 48.109),
    (NULL, 1, 12055.10, 48.109),
    (NULL, 1, 12057.50, 48.110),
    (NULL, 1, 12059.90, 48.110),
    (NULL, 1, 12062.30, 48.110),
    (NULL, 1, 12064.70, 48.111),
    (NULL, 1, 12067.10, 48.111),
    (NULL, 1, 12069.50, 48.111),
    (NULL, 1, 12072.00, 48.112),
    (NULL, 1, 12074.40, 48.112),
    (NULL, 1, 12076.80, 48.112),
    (NULL, 1, 12079.20, 48.113),
    (NULL, 1, 12081.60, 48.113),
    (NULL, 1, 12084.00, 48.113),
    (NULL, 1, 12086.50, 48.114),
    (NULL, 1, 12088.90, 48.114),
    (NULL, 1, 12091.30, 48.115),
    (NULL, 1, 12093.70, 48.115),
    (NULL, 1, 12096.10, 48.119),
    (NULL, 1, 12098.50, 48.219),
    (NULL, 1, 12100.80, 48.312),
    (NULL, 1, 12103.00, 48.396),
    (NULL, 1, 12105.20, 48.474),
    (NULL, 1, 12107.20, 48.543),
    (NULL, 1, 12109.10, 48.606),
    (NULL, 1, 12111.00, 48.661),
    (NULL, 1, 12112.70, 48.707),
    (NULL, 1, 12114.30, 48.744),
    (NULL, 1, 12115.80, 48.801),
    (NULL, 1, 12117.20, 48.850),
    (NULL, 1, 12118.50, 48.901),
    (NULL, 1, 12119.60, 48.947),
    (NULL, 1, 12120.70, 48.976),
    (NULL, 1, 12121.70, 49.007),
    (NULL, 1, 12122.50, 49.011),
    (NULL, 1, 12123.30, 48.998),
    (NULL, 1, 12123.90, 48.977);
    