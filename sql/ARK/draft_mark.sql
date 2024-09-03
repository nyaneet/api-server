-- Координаты отметок заглубления на корпусе судна 
-- относительно центра, м
-- Z | X | Y

INSERT INTO draft_mark
  (ship_id, name, z, x, y)
VALUES
-- stern	
-- (1, 'stern SB', 0.6,	0,	     0),
-- (1, 'stern SB', 0.8,	0,	     0),
(1, 'stern SB', 1,   115.153, 0.614),
(1, 'stern SB', 1.2, 115.546, 0.541),
(1, 'stern SB', 1.4, 115.86,  0.495),
(1, 'stern SB', 1.6, 116.119, 0.467),
(1, 'stern SB', 1.8, 116.339, 0.449),
(1, 'stern SB', 2,   116.528, 0.44),
(1, 'stern SB', 2.2, 116.694, 0.436),
(1, 'stern SB', 2.4, 116.841, 0.436),
(1, 'stern SB', 2.6, 116.972, 0.44),
(1, 'stern SB', 2.8, 117.091, 0.447),
(1, 'stern SB', 3,   117.2,   0.456),
(1, 'stern SB', 3.2, 117.299, 0.468),
(1, 'stern SB', 3.4, 117.392, 0.482),
(1, 'stern SB', 3.6, 117.478, 0.498),
(1, 'stern SB', 3.8, 117.559, 0.516),
(1, 'stern SB', 4,   117.636, 0.537),
(1, 'stern SB', 4.2, 117.708, 0.56),
(1, 'stern SB', 4.4, 117.777, 0.587),
(1, 'stern SB', 4.6, 117.844, 0.616),
(1, 'stern SB', 4.8, 117.908, 0.65),
(1, 'stern SB', 5,   117.969, 0.688),

-- (1, 'stern PS', 0.6,	0,	     0),
-- (1, 'stern PS', 0.8,	0,	     0),
(1, 'stern PS', 1,   115.153, -0.614),
(1, 'stern PS', 1.2, 115.546, -0.541),
(1, 'stern PS', 1.4, 115.86,  -0.495),
(1, 'stern PS', 1.6, 116.119, -0.467),
(1, 'stern PS', 1.8, 116.339, -0.449),
(1, 'stern PS', 2,   116.528, -0.44),
(1, 'stern PS', 2.2, 116.694, -0.436),
(1, 'stern PS', 2.4, 116.841, -0.436),
(1, 'stern PS', 2.6, 116.972, -0.44),
(1, 'stern PS', 2.8, 117.091, -0.447),
(1, 'stern PS', 3,   117.2,   -0.456),
(1, 'stern PS', 3.2, 117.299, -0.468),
(1, 'stern PS', 3.4, 117.392, -0.482),
(1, 'stern PS', 3.6, 117.478, -0.498),
(1, 'stern PS', 3.8, 117.559, -0.516),
(1, 'stern PS', 4,   117.636, -0.537),
(1, 'stern PS', 4.2, 117.708, -0.56),
(1, 'stern PS', 4.4, 117.777, -0.587),
(1, 'stern PS', 4.6, 117.844, -0.616),
(1, 'stern PS', 4.8, 117.908, -0.65),
(1, 'stern PS', 5,   117.969, -0.688),

-- 139 fr	
(1, '139 fr SB', 0.6, 89.05, 6.7),
(1, '139 fr SB', 0.8, 89.05, 6.7),
(1, '139 fr SB', 1,   89.05, 6.7),
(1, '139 fr SB', 1.2, 89.05, 6.7),
(1, '139 fr SB', 1.4, 89.05, 6.7),
(1, '139 fr SB', 1.6, 89.05, 6.7),
(1, '139 fr SB', 1.8, 89.05, 6.7),
(1, '139 fr SB', 2,   89.05, 6.7),
(1, '139 fr SB', 2.2, 89.05, 6.7),
(1, '139 fr SB', 2.4, 89.05, 6.7),
(1, '139 fr SB', 2.6, 89.05, 6.7),
(1, '139 fr SB', 2.8, 89.05, 6.7),
(1, '139 fr SB', 3,   89.05, 6.7),
(1, '139 fr SB', 3.2, 89.05, 6.7),
(1, '139 fr SB', 3.4, 89.05, 6.7),
(1, '139 fr SB', 3.6, 89.05, 6.7),
(1, '139 fr SB', 3.8, 89.05, 6.7),
(1, '139 fr SB', 4,   89.05, 6.7),
(1, '139 fr SB', 4.2, 89.05, 6.7),
(1, '139 fr SB', 4.4, 89.05, 6.7),
(1, '139 fr SB', 4.6, 89.05, 6.7),
(1, '139 fr SB', 4.8, 89.05, 6.7),
(1, '139 fr SB', 5,   89.05, 6.7),

(1, '139 fr PS', 0.6, 89.05, -6.7),
(1, '139 fr PS', 0.8, 89.05, -6.7),
(1, '139 fr PS', 1,   89.05, -6.7),
(1, '139 fr PS', 1.2, 89.05, -6.7),
(1, '139 fr PS', 1.4, 89.05, -6.7),
(1, '139 fr PS', 1.6, 89.05, -6.7),
(1, '139 fr PS', 1.8, 89.05, -6.7),
(1, '139 fr PS', 2,   89.05, -6.7),
(1, '139 fr PS', 2.2, 89.05, -6.7),
(1, '139 fr PS', 2.4, 89.05, -6.7),
(1, '139 fr PS', 2.6, 89.05, -6.7),
(1, '139 fr PS', 2.8, 89.05, -6.7),
(1, '139 fr PS', 3,   89.05, -6.7),
(1, '139 fr PS', 3.2, 89.05, -6.7),
(1, '139 fr PS', 3.4, 89.05, -6.7),
(1, '139 fr PS', 3.6, 89.05, -6.7),
(1, '139 fr PS', 3.8, 89.05, -6.7),
(1, '139 fr PS', 4,   89.05, -6.7),
(1, '139 fr PS', 4.2, 89.05, -6.7),
(1, '139 fr PS', 4.4, 89.05, -6.7),
(1, '139 fr PS', 4.6, 89.05, -6.7),
(1, '139 fr PS', 4.8, 89.05, -6.7),
(1, '139 fr PS', 5,   89.05, -6.7),

-- 95 fr	
(1, '95 fr SB', 0.6, 60.45, 6.7),
(1, '95 fr SB', 0.8, 60.45, 6.7),
(1, '95 fr SB', 1,   60.45, 6.7),
(1, '95 fr SB', 1.2, 60.45, 6.7),
(1, '95 fr SB', 1.4, 60.45, 6.7),
(1, '95 fr SB', 1.6, 60.45, 6.7),
(1, '95 fr SB', 1.8, 60.45, 6.7),
(1, '95 fr SB', 2,   60.45, 6.7),
(1, '95 fr SB', 2.2, 60.45, 6.7),
(1, '95 fr SB', 2.4, 60.45, 6.7),
(1, '95 fr SB', 2.6, 60.45, 6.7),
(1, '95 fr SB', 2.8, 60.45, 6.7),
(1, '95 fr SB', 3,   60.45, 6.7),
(1, '95 fr SB', 3.2, 60.45, 6.7),
(1, '95 fr SB', 3.4, 60.45, 6.7),
(1, '95 fr SB', 3.6, 60.45, 6.7),
(1, '95 fr SB', 3.8, 60.45, 6.7),
(1, '95 fr SB', 4,   60.45, 6.7),
(1, '95 fr SB', 4.2, 60.45, 6.7),
(1, '95 fr SB', 4.4, 60.45, 6.7),
(1, '95 fr SB', 4.6, 60.45, 6.7),
(1, '95 fr SB', 4.8, 60.45, 6.7),
(1, '95 fr SB', 5,   60.45, 6.7),

(1, '95 fr PS', 0.6, 60.45, -6.7),
(1, '95 fr PS', 0.8, 60.45, -6.7),
(1, '95 fr PS', 1,   60.45, -6.7),
(1, '95 fr PS', 1.2, 60.45, -6.7),
(1, '95 fr PS', 1.4, 60.45, -6.7),
(1, '95 fr PS', 1.6, 60.45, -6.7),
(1, '95 fr PS', 1.8, 60.45, -6.7),
(1, '95 fr PS', 2,   60.45, -6.7),
(1, '95 fr PS', 2.2, 60.45, -6.7),
(1, '95 fr PS', 2.4, 60.45, -6.7),
(1, '95 fr PS', 2.6, 60.45, -6.7),
(1, '95 fr PS', 2.8, 60.45, -6.7),
(1, '95 fr PS', 3,   60.45, -6.7),
(1, '95 fr PS', 3.2, 60.45, -6.7),
(1, '95 fr PS', 3.4, 60.45, -6.7),
(1, '95 fr PS', 3.6, 60.45, -6.7),
(1, '95 fr PS', 3.8, 60.45, -6.7),
(1, '95 fr PS', 4,   60.45, -6.7),
(1, '95 fr PS', 4.2, 60.45, -6.7),
(1, '95 fr PS', 4.4, 60.45, -6.7),
(1, '95 fr PS', 4.6, 60.45, -6.7),
(1, '95 fr PS', 4.8, 60.45, -6.7),
(1, '95 fr PS', 5,   60.45, -6.7),

-- 48 fr	
(1, '48 fr SB', 0.6, 29.9, 6.7),
(1, '48 fr SB', 0.8, 29.9, 6.7),
(1, '48 fr SB', 1,   29.9, 6.7),
(1, '48 fr SB', 1.2, 29.9, 6.7),
(1, '48 fr SB', 1.4, 29.9, 6.7),
(1, '48 fr SB', 1.6, 29.9, 6.7),
(1, '48 fr SB', 1.8, 29.9, 6.7),
(1, '48 fr SB', 2,   29.9, 6.7),
(1, '48 fr SB', 2.2, 29.9, 6.7),
(1, '48 fr SB', 2.4, 29.9, 6.7),
(1, '48 fr SB', 2.6, 29.9, 6.7),
(1, '48 fr SB', 2.8, 29.9, 6.7),
(1, '48 fr SB', 3,   29.9, 6.7),
(1, '48 fr SB', 3.2, 29.9, 6.7),
(1, '48 fr SB', 3.4, 29.9, 6.7),
(1, '48 fr SB', 3.6, 29.9, 6.7),
(1, '48 fr SB', 3.8, 29.9, 6.7),
(1, '48 fr SB', 4,   29.9, 6.7),
(1, '48 fr SB', 4.2, 29.9, 6.7),
(1, '48 fr SB', 4.4, 29.9, 6.7),
(1, '48 fr SB', 4.6, 29.9, 6.7),
(1, '48 fr SB', 4.8, 29.9, 6.7),
(1, '48 fr SB', 5,   29.9, 6.7),

(1, '48 fr PS', 0.6, 29.9, -6.7),
(1, '48 fr PS', 0.8, 29.9, -6.7),
(1, '48 fr PS', 1,   29.9, -6.7),
(1, '48 fr PS', 1.2, 29.9, -6.7),
(1, '48 fr PS', 1.4, 29.9, -6.7),
(1, '48 fr PS', 1.6, 29.9, -6.7),
(1, '48 fr PS', 1.8, 29.9, -6.7),
(1, '48 fr PS', 2,   29.9, -6.7),
(1, '48 fr PS', 2.2, 29.9, -6.7),
(1, '48 fr PS', 2.4, 29.9, -6.7),
(1, '48 fr PS', 2.6, 29.9, -6.7),
(1, '48 fr PS', 2.8, 29.9, -6.7),
(1, '48 fr PS', 3,   29.9, -6.7),
(1, '48 fr PS', 3.2, 29.9, -6.7),
(1, '48 fr PS', 3.4, 29.9, -6.7),
(1, '48 fr PS', 3.6, 29.9, -6.7),
(1, '48 fr PS', 3.8, 29.9, -6.7),
(1, '48 fr PS', 4,   29.9, -6.7),
(1, '48 fr PS', 4.2, 29.9, -6.7),
(1, '48 fr PS', 4.4, 29.9, -6.7),
(1, '48 fr PS', 4.6, 29.9, -6.7),
(1, '48 fr PS', 4.8, 29.9, -6.7),
(1, '48 fr PS', 5,   29.9, -6.7),

-- 10 fr	
-- (1, '10 fr SB', 0.6,	0, 0),
-- (1, '10 fr SB', 0.8, 0, 0),
-- (1, '10 fr SB', 1,	  0, 0),
-- (1, '10 fr SB', 1.2, 0, 0),
(1, '10 fr SB', 1.4, 6, 6.523),
(1, '10 fr SB', 1.6, 6, 6.633),
(1, '10 fr SB', 1.8, 6, 6.688),
(1, '10 fr SB', 2,	  6, 6.7),
(1, '10 fr SB', 2.2, 6, 6.7),
(1, '10 fr SB', 2.4, 6, 6.7),
(1, '10 fr SB', 2.6, 6, 6.7),
(1, '10 fr SB', 2.8, 6, 6.7),
(1, '10 fr SB', 3,	  6, 6.7),
(1, '10 fr SB', 3.2, 6, 6.7),
(1, '10 fr SB', 3.4, 6, 6.7),
(1, '10 fr SB', 3.6, 6, 6.7),
(1, '10 fr SB', 3.8, 6, 6.7),
(1, '10 fr SB', 4,	  6, 6.7),
(1, '10 fr SB', 4.2, 6, 6.7),
(1, '10 fr SB', 4.4, 6, 6.7),
(1, '10 fr SB', 4.6, 6, 6.7),
(1, '10 fr SB', 4.8, 6, 6.7),
(1, '10 fr SB', 5,	  6, 6.7),

-- (1, '10 fr PS', 0.6,	0, 0),
-- (1, '10 fr PS', 0.8, 0, 0),
-- (1, '10 fr PS', 1,	  0, 0),
-- (1, '10 fr PS', 1.2, 0, 0),
(1, '10 fr PS', 1.4, 6, -6.523),
(1, '10 fr PS', 1.6, 6, -6.633),
(1, '10 fr PS', 1.8, 6, -6.688),
(1, '10 fr PS', 2,	 6, -6.7),
(1, '10 fr PS', 2.2, 6, -6.7),
(1, '10 fr PS', 2.4, 6, -6.7),
(1, '10 fr PS', 2.6, 6, -6.7),
(1, '10 fr PS', 2.8, 6, -6.7),
(1, '10 fr PS', 3,	 6, -6.7),
(1, '10 fr PS', 3.2, 6, -6.7),
(1, '10 fr PS', 3.4, 6, -6.7),
(1, '10 fr PS', 3.6, 6, -6.7),
(1, '10 fr PS', 3.8, 6, -6.7),
(1, '10 fr PS', 4,	 6, -6.7),
(1, '10 fr PS', 4.2, 6, -6.7),
(1, '10 fr PS', 4.4, 6, -6.7),
(1, '10 fr PS', 4.6, 6, -6.7),
(1, '10 fr PS', 4.8, 6, -6.7),
(1, '10 fr PS', 5,	 6, -6.7);

