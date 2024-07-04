-- Координаты отметок заглубления на корпусе судна 
-- относительно центра, м
-- Z | X | Y

INSERT INTO draft_mark
  (ship_id, name, z, x, y)
VALUES
-- stern	
(1, 'stern', 0.6,	0,	     0),
(1, 'stern', 0.8,	0,	     0),
(1, 'stern', 1,   115.153, 0.614),
(1, 'stern', 1.2, 115.546, 0.541),
(1, 'stern', 1.4, 115.86,  0.495),
(1, 'stern', 1.6, 116.119, 0.467),
(1, 'stern', 1.8, 116.339, 0.449),
(1, 'stern', 2,   116.528, 0.44),
(1, 'stern', 2.2, 116.694, 0.436),
(1, 'stern', 2.4, 116.841, 0.436),
(1, 'stern', 2.6, 116.972, 0.44),
(1, 'stern', 2.8, 117.091, 0.447),
(1, 'stern', 3,   117.2,   0.456),
(1, 'stern', 3.2, 117.299, 0.468),
(1, 'stern', 3.4, 117.392, 0.482),
(1, 'stern', 3.6, 117.478, 0.498),
(1, 'stern', 3.8, 117.559, 0.516),
(1, 'stern', 4,   117.636, 0.537),
(1, 'stern', 4.2, 117.708, 0.56),
(1, 'stern', 4.4, 117.777, 0.587),
(1, 'stern', 4.6, 117.844, 0.616),
(1, 'stern', 4.8, 117.908, 0.65),
(1, 'stern', 5,   117.969, 0.688),

-- 139 fr	
(1, '139 fr', 0.6, 89.05, 6.7),
(1, '139 fr', 0.8, 89.05, 6.7),
(1, '139 fr', 1,   89.05, 6.7),
(1, '139 fr', 1.2, 89.05, 6.7),
(1, '139 fr', 1.4, 89.05, 6.7),
(1, '139 fr', 1.6, 89.05, 6.7),
(1, '139 fr', 1.8, 89.05, 6.7),
(1, '139 fr', 2,   89.05, 6.7),
(1, '139 fr', 2.2, 89.05, 6.7),
(1, '139 fr', 2.4, 89.05, 6.7),
(1, '139 fr', 2.6, 89.05, 6.7),
(1, '139 fr', 2.8, 89.05, 6.7),
(1, '139 fr', 3,   89.05, 6.7),
(1, '139 fr', 3.2, 89.05, 6.7),
(1, '139 fr', 3.4, 89.05, 6.7),
(1, '139 fr', 3.6, 89.05, 6.7),
(1, '139 fr', 3.8, 89.05, 6.7),
(1, '139 fr', 4,   89.05, 6.7),
(1, '139 fr', 4.2, 89.05, 6.7),
(1, '139 fr', 4.4, 89.05, 6.7),
(1, '139 fr', 4.6, 89.05, 6.7),
(1, '139 fr', 4.8, 89.05, 6.7),
(1, '139 fr', 5,   89.05, 6.7),

-- 95 fr	
(1, '95 fr', 0.6, 60.45, 6.7),
(1, '95 fr', 0.8, 60.45, 6.7),
(1, '95 fr', 1,   60.45, 6.7),
(1, '95 fr', 1.2, 60.45, 6.7),
(1, '95 fr', 1.4, 60.45, 6.7),
(1, '95 fr', 1.6, 60.45, 6.7),
(1, '95 fr', 1.8, 60.45, 6.7),
(1, '95 fr', 2,   60.45, 6.7),
(1, '95 fr', 2.2, 60.45, 6.7),
(1, '95 fr', 2.4, 60.45, 6.7),
(1, '95 fr', 2.6, 60.45, 6.7),
(1, '95 fr', 2.8, 60.45, 6.7),
(1, '95 fr', 3,   60.45, 6.7),
(1, '95 fr', 3.2, 60.45, 6.7),
(1, '95 fr', 3.4, 60.45, 6.7),
(1, '95 fr', 3.6, 60.45, 6.7),
(1, '95 fr', 3.8, 60.45, 6.7),
(1, '95 fr', 4,   60.45, 6.7),
(1, '95 fr', 4.2, 60.45, 6.7),
(1, '95 fr', 4.4, 60.45, 6.7),
(1, '95 fr', 4.6, 60.45, 6.7),
(1, '95 fr', 4.8, 60.45, 6.7),
(1, '95 fr', 5,   60.45, 6.7),

-- 48 fr	
(1, '48 fr', 0.6, 29.9, 6.7),
(1, '48 fr', 0.8, 29.9, 6.7),
(1, '48 fr', 1,   29.9, 6.7),
(1, '48 fr', 1.2, 29.9, 6.7),
(1, '48 fr', 1.4, 29.9, 6.7),
(1, '48 fr', 1.6, 29.9, 6.7),
(1, '48 fr', 1.8, 29.9, 6.7),
(1, '48 fr', 2,   29.9, 6.7),
(1, '48 fr', 2.2, 29.9, 6.7),
(1, '48 fr', 2.4, 29.9, 6.7),
(1, '48 fr', 2.6, 29.9, 6.7),
(1, '48 fr', 2.8, 29.9, 6.7),
(1, '48 fr', 3,   29.9, 6.7),
(1, '48 fr', 3.2, 29.9, 6.7),
(1, '48 fr', 3.4, 29.9, 6.7),
(1, '48 fr', 3.6, 29.9, 6.7),
(1, '48 fr', 3.8, 29.9, 6.7),
(1, '48 fr', 4,   29.9, 6.7),
(1, '48 fr', 4.2, 29.9, 6.7),
(1, '48 fr', 4.4, 29.9, 6.7),
(1, '48 fr', 4.6, 29.9, 6.7),
(1, '48 fr', 4.8, 29.9, 6.7),
(1, '48 fr', 5,   29.9, 6.7),

-- 10 fr	
(1, '10 fr', 0.6,	0, 0),
(1, '10 fr', 0.8, 0, 0),
(1, '10 fr', 1,	  0, 0),
(1, '10 fr', 1.2, 0, 0),
(1, '10 fr', 1.4, 6, 6.523),
(1, '10 fr', 1.6, 6, 6.633),
(1, '10 fr', 1.8, 6, 6.688),
(1, '10 fr', 2,	  6, 6.7),
(1, '10 fr', 2.2, 6, 6.7),
(1, '10 fr', 2.4, 6, 6.7),
(1, '10 fr', 2.6, 6, 6.7),
(1, '10 fr', 2.8, 6, 6.7),
(1, '10 fr', 3,	  6, 6.7),
(1, '10 fr', 3.2, 6, 6.7),
(1, '10 fr', 3.4, 6, 6.7),
(1, '10 fr', 3.6, 6, 6.7),
(1, '10 fr', 3.8, 6, 6.7),
(1, '10 fr', 4,	  6, 6.7),
(1, '10 fr', 4.2, 6, 6.7),
(1, '10 fr', 4.4, 6, 6.7),
(1, '10 fr', 4.6, 6, 6.7),
(1, '10 fr', 4.8, 6, 6.7),
(1, '10 fr', 5,	  6, 6.7);


