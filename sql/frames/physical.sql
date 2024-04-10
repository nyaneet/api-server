-- Теоретические шпангоуты
CREATE TABLE if not exists physical_frame (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  index INT NOT NULL, 
  key TEXT NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT physical_frame_pk PRIMARY KEY (id),
  CONSTRAINT physical_frame_index_unique UNIQUE (ship_id, index, key),
  CONSTRAINT physical_frame_key_check CHECK(char_length(key) <= 50)
);

INSERT INTO physical_frame
    (ship_id, index, key, value)
VALUES
  (1, 0, 'x', 0),
  (1, 0, 'delta_x', 0.60),
  (1, 1, 'x', 0.6),
  (1, 1, 'delta_x', 0.60),
  (1, 2, 'x', 1.2),
  (1, 2, 'delta_x', 0.60),
  (1, 3, 'x', 1.8),
  (1, 3, 'delta_x', 0.60),
  (1, 4, 'x', 2.4),
  (1, 4, 'delta_x', 0.60),
  (1, 5, 'x', 3),
  (1, 5, 'delta_x', 0.60),
  (1, 6, 'x', 3.6),
  (1, 6, 'delta_x', 0.60),
  (1, 7, 'x', 4.2),
  (1, 7, 'delta_x', 0.60),
  (1, 8, 'x', 4.8),
  (1, 8, 'delta_x', 0.60),
  (1, 9, 'x', 5.4),
  (1, 9, 'delta_x', 0.60),
  (1, 10, 'x', 6),
  (1, 10, 'delta_x', 0.60),
  (1, 11, 'x', 6.6),
  (1, 11, 'delta_x', 0.60),
  (1, 12, 'x', 7.2),
  (1, 12, 'delta_x', 0.60),
  (1, 13, 'x', 7.8),
  (1, 13, 'delta_x', 0.60),
  (1, 14, 'x', 8.4),
  (1, 14, 'delta_x', 0.60),
  (1, 15, 'x', 9),
  (1, 15, 'delta_x', 0.60),
  (1, 16, 'x', 9.6),
  (1, 16, 'delta_x', 0.60),
  (1, 17, 'x', 10.2),
  (1, 17, 'delta_x', 0.60),
  (1, 18, 'x', 10.8),
  (1, 18, 'delta_x', 0.60),
  (1, 19, 'x', 11.4),
  (1, 19, 'delta_x', 0.60),
  (1, 20, 'x', 12),
  (1, 20, 'delta_x', 0.60),
  (1, 21, 'x', 12.6),
  (1, 21, 'delta_x', 0.60),
  (1, 22, 'x', 13.2),
  (1, 22, 'delta_x', 0.60),
  (1, 23, 'x', 13.8),
  (1, 23, 'delta_x', 0.60),
  (1, 24, 'x', 14.4),
  (1, 24, 'delta_x', 0.60),
  (1, 25, 'x', 15),
  (1, 25, 'delta_x', 0.60),
  (1, 26, 'x', 15.6),
  (1, 26, 'delta_x', 0.60),
  (1, 27, 'x', 16.25),
  (1, 27, 'delta_x', 0.65),
  (1, 28, 'x', 16.9),
  (1, 28, 'delta_x', 0.65),
  (1, 29, 'x', 17.55),
  (1, 29, 'delta_x', 0.65),
  (1, 30, 'x', 18.2),
  (1, 30, 'delta_x', 0.65),
  (1, 31, 'x', 18.85),
  (1, 31, 'delta_x', 0.65),
  (1, 32, 'x', 19.5),
  (1, 32, 'delta_x', 0.65),
  (1, 33, 'x', 20.15),
  (1, 33, 'delta_x', 0.65),
  (1, 34, 'x', 20.8),
  (1, 34, 'delta_x', 0.65),
  (1, 35, 'x', 21.45),
  (1, 35, 'delta_x', 0.65),
  (1, 36, 'x', 22.1),
  (1, 36, 'delta_x', 0.65),
  (1, 37, 'x', 22.75),
  (1, 37, 'delta_x', 0.65),
  (1, 38, 'x', 23.4),
  (1, 38, 'delta_x', 0.65),
  (1, 39, 'x', 24.05),
  (1, 39, 'delta_x', 0.65),
  (1, 40, 'x', 24.7),
  (1, 40, 'delta_x', 0.65),
  (1, 41, 'x', 25.35),
  (1, 41, 'delta_x', 0.65),
  (1, 42, 'x', 26),
  (1, 42, 'delta_x', 0.65),
  (1, 43, 'x', 26.65),
  (1, 43, 'delta_x', 0.65),
  (1, 44, 'x', 27.3),
  (1, 44, 'delta_x', 0.65),
  (1, 45, 'x', 27.95),
  (1, 45, 'delta_x', 0.65),
  (1, 46, 'x', 28.6),
  (1, 46, 'delta_x', 0.65),
  (1, 47, 'x', 29.25),
  (1, 47, 'delta_x', 0.65),
  (1, 48, 'x', 29.9),
  (1, 48, 'delta_x', 0.65),
  (1, 49, 'x', 30.55),
  (1, 49, 'delta_x', 0.65),
  (1, 50, 'x', 31.2),
  (1, 50, 'delta_x', 0.65),
  (1, 51, 'x', 31.85),
  (1, 51, 'delta_x', 0.65),
  (1, 52, 'x', 32.5),
  (1, 52, 'delta_x', 0.65),
  (1, 53, 'x', 33.15),
  (1, 53, 'delta_x', 0.65),
  (1, 54, 'x', 33.8),
  (1, 54, 'delta_x', 0.65),
  (1, 55, 'x', 34.45),
  (1, 55, 'delta_x', 0.65),
  (1, 56, 'x', 35.1),
  (1, 56, 'delta_x', 0.65),
  (1, 57, 'x', 35.75),
  (1, 57, 'delta_x', 0.65),
  (1, 58, 'x', 36.4),
  (1, 58, 'delta_x', 0.65),
  (1, 59, 'x', 37.05),
  (1, 59, 'delta_x', 0.65),
  (1, 60, 'x', 37.7),
  (1, 60, 'delta_x', 0.65),
  (1, 61, 'x', 38.35),
  (1, 61, 'delta_x', 0.65),
  (1, 62, 'x', 39),
  (1, 62, 'delta_x', 0.65),
  (1, 63, 'x', 39.65),
  (1, 63, 'delta_x', 0.65),
  (1, 64, 'x', 40.3),
  (1, 64, 'delta_x', 0.65),
  (1, 65, 'x', 40.95),
  (1, 65, 'delta_x', 0.65),
  (1, 66, 'x', 41.6),
  (1, 66, 'delta_x', 0.65),
  (1, 67, 'x', 42.25),
  (1, 67, 'delta_x', 0.65),
  (1, 68, 'x', 42.9),
  (1, 68, 'delta_x', 0.65),
  (1, 69, 'x', 43.55),
  (1, 69, 'delta_x', 0.65),
  (1, 70, 'x', 44.2),
  (1, 70, 'delta_x', 0.65),
  (1, 71, 'x', 44.85),
  (1, 71, 'delta_x', 0.65),
  (1, 72, 'x', 45.5),
  (1, 72, 'delta_x', 0.65),
  (1, 73, 'x', 46.15),
  (1, 73, 'delta_x', 0.65),
  (1, 74, 'x', 46.8),
  (1, 74, 'delta_x', 0.65),
  (1, 75, 'x', 47.45),
  (1, 75, 'delta_x', 0.65),
  (1, 76, 'x', 48.1),
  (1, 76, 'delta_x', 0.65),
  (1, 77, 'x', 48.75),
  (1, 77, 'delta_x', 0.65),
  (1, 78, 'x', 49.4),
  (1, 78, 'delta_x', 0.65),
  (1, 79, 'x', 50.05),
  (1, 79, 'delta_x', 0.65),
  (1, 80, 'x', 50.7),
  (1, 80, 'delta_x', 0.65),
  (1, 81, 'x', 51.35),
  (1, 81, 'delta_x', 0.65),
  (1, 82, 'x', 52),
  (1, 82, 'delta_x', 0.65),
  (1, 83, 'x', 52.65),
  (1, 83, 'delta_x', 0.65),
  (1, 84, 'x', 53.3),
  (1, 84, 'delta_x', 0.65),
  (1, 85, 'x', 53.95),
  (1, 85, 'delta_x', 0.65),
  (1, 86, 'x', 54.6),
  (1, 86, 'delta_x', 0.65),
  (1, 87, 'x', 55.25),
  (1, 87, 'delta_x', 0.65),
  (1, 88, 'x', 55.9),
  (1, 88, 'delta_x', 0.65),
  (1, 89, 'x', 56.55),
  (1, 89, 'delta_x', 0.65),
  (1, 90, 'x', 57.2),
  (1, 90, 'delta_x', 0.65),
  (1, 91, 'x', 57.85),
  (1, 91, 'delta_x', 0.65),
  (1, 92, 'x', 58.5),
  (1, 92, 'delta_x', 0.65),
  (1, 93, 'x', 59.15),
  (1, 93, 'delta_x', 0.65),
  (1, 94, 'x', 59.8),
  (1, 94, 'delta_x', 0.65),
  (1, 95, 'x', 60.45),
  (1, 95, 'delta_x', 0.65),
  (1, 96, 'x', 61.1),
  (1, 96, 'delta_x', 0.65),
  (1, 97, 'x', 61.75),
  (1, 97, 'delta_x', 0.65),
  (1, 98, 'x', 62.4),
  (1, 98, 'delta_x', 0.65),
  (1, 99, 'x', 63.05),
  (1, 99, 'delta_x', 0.65),
  (1, 100, 'x', 63.7),
  (1, 100, 'delta_x', 0.65),
  (1, 101, 'x', 64.35),
  (1, 101, 'delta_x', 0.65),
  (1, 102, 'x', 65),
  (1, 102, 'delta_x', 0.65),
  (1, 103, 'x', 65.65),
  (1, 103, 'delta_x', 0.65),
  (1, 104, 'x', 66.3),
  (1, 104, 'delta_x', 0.65),
  (1, 105, 'x', 66.95),
  (1, 105, 'delta_x', 0.65),
  (1, 106, 'x', 67.6),
  (1, 106, 'delta_x', 0.65),
  (1, 107, 'x', 68.25),
  (1, 107, 'delta_x', 0.65),
  (1, 108, 'x', 68.9),
  (1, 108, 'delta_x', 0.65),
  (1, 109, 'x', 69.55),
  (1, 109, 'delta_x', 0.65),
  (1, 110, 'x', 70.2),
  (1, 110, 'delta_x', 0.65),
  (1, 111, 'x', 70.85),
  (1, 111, 'delta_x', 0.65),
  (1, 112, 'x', 71.5),
  (1, 112, 'delta_x', 0.65),
  (1, 113, 'x', 72.15),
  (1, 113, 'delta_x', 0.65),
  (1, 114, 'x', 72.8),
  (1, 114, 'delta_x', 0.65),
  (1, 115, 'x', 73.45),
  (1, 115, 'delta_x', 0.65),
  (1, 116, 'x', 74.1),
  (1, 116, 'delta_x', 0.65),
  (1, 117, 'x', 74.75),
  (1, 117, 'delta_x', 0.65),
  (1, 118, 'x', 75.4),
  (1, 118, 'delta_x', 0.65),
  (1, 119, 'x', 76.05),
  (1, 119, 'delta_x', 0.65),
  (1, 120, 'x', 76.7),
  (1, 120, 'delta_x', 0.65),
  (1, 121, 'x', 77.35),
  (1, 121, 'delta_x', 0.65),
  (1, 122, 'x', 78),
  (1, 122, 'delta_x', 0.65),
  (1, 123, 'x', 78.65),
  (1, 123, 'delta_x', 0.65),
  (1, 124, 'x', 79.3),
  (1, 124, 'delta_x', 0.65),
  (1, 125, 'x', 79.95),
  (1, 125, 'delta_x', 0.65),
  (1, 126, 'x', 80.6),
  (1, 126, 'delta_x', 0.65),
  (1, 127, 'x', 81.25),
  (1, 127, 'delta_x', 0.65),
  (1, 128, 'x', 81.9),
  (1, 128, 'delta_x', 0.65),
  (1, 129, 'x', 82.55),
  (1, 129, 'delta_x', 0.65),
  (1, 130, 'x', 83.2),
  (1, 130, 'delta_x', 0.65),
  (1, 131, 'x', 83.85),
  (1, 131, 'delta_x', 0.65),
  (1, 132, 'x', 84.5),
  (1, 132, 'delta_x', 0.65),
  (1, 133, 'x', 85.15),
  (1, 133, 'delta_x', 0.65),
  (1, 134, 'x', 85.8),
  (1, 134, 'delta_x', 0.65),
  (1, 135, 'x', 86.45),
  (1, 135, 'delta_x', 0.65),
  (1, 136, 'x', 87.1),
  (1, 136, 'delta_x', 0.65),
  (1, 137, 'x', 87.75),
  (1, 137, 'delta_x', 0.65),
  (1, 138, 'x', 88.4),
  (1, 138, 'delta_x', 0.65),
  (1, 139, 'x', 89.05),
  (1, 139, 'delta_x', 0.65),
  (1, 140, 'x', 89.7),
  (1, 140, 'delta_x', 0.65),
  (1, 141, 'x', 90.35),
  (1, 141, 'delta_x', 0.65),
  (1, 142, 'x', 91),
  (1, 142, 'delta_x', 0.65),
  (1, 143, 'x', 91.65),
  (1, 143, 'delta_x', 0.65),
  (1, 144, 'x', 92.3),
  (1, 144, 'delta_x', 0.65),
  (1, 145, 'x', 92.95),
  (1, 145, 'delta_x', 0.65),
  (1, 146, 'x', 93.6),
  (1, 146, 'delta_x', 0.65),
  (1, 147, 'x', 94.25),
  (1, 147, 'delta_x', 0.65),
  (1, 148, 'x', 94.9),
  (1, 148, 'delta_x', 0.65),
  (1, 149, 'x', 95.55),
  (1, 149, 'delta_x', 0.65),
  (1, 150, 'x', 96.2),
  (1, 150, 'delta_x', 0.65),
  (1, 151, 'x', 96.85),
  (1, 151, 'delta_x', 0.65),
  (1, 152, 'x', 97.5),
  (1, 152, 'delta_x', 0.65),
  (1, 153, 'x', 98.15),
  (1, 153, 'delta_x', 0.65),
  (1, 154, 'x', 98.75),
  (1, 154, 'delta_x', 0.60),
  (1, 155, 'x', 99.35),
  (1, 155, 'delta_x', 0.60),
  (1, 156, 'x', 99.95),
  (1, 156, 'delta_x', 0.60),
  (1, 157, 'x', 100.55),
  (1, 157, 'delta_x', 0.60),
  (1, 158, 'x', 101.15),
  (1, 158, 'delta_x', 0.60),
  (1, 159, 'x', 101.75),
  (1, 159, 'delta_x', 0.60),
  (1, 160, 'x', 102.35),
  (1, 160, 'delta_x', 0.60),
  (1, 161, 'x', 102.95),
  (1, 161, 'delta_x', 0.60),
  (1, 162, 'x', 103.55),
  (1, 162, 'delta_x', 0.60),
  (1, 163, 'x', 104.15),
  (1, 163, 'delta_x', 0.60),
  (1, 164, 'x', 104.75),
  (1, 164, 'delta_x', 0.60),
  (1, 165, 'x', 105.35),
  (1, 165, 'delta_x', 0.60),
  (1, 166, 'x', 105.95),
  (1, 166, 'delta_x', 0.60),
  (1, 167, 'x', 106.55),
  (1, 167, 'delta_x', 0.60),
  (1, 168, 'x', 107.15),
  (1, 168, 'delta_x', 0.60),
  (1, 169, 'x', 107.75),
  (1, 169, 'delta_x', 0.60),
  (1, 170, 'x', 108.35),
  (1, 170, 'delta_x', 0.60),
  (1, 171, 'x', 108.95),
  (1, 171, 'delta_x', 0.60),
  (1, 172, 'x', 109.55),
  (1, 172, 'delta_x', 0.60),
  (1, 173, 'x', 110.15),
  (1, 173, 'delta_x', 0.60),
  (1, 174, 'x', 110.75),
  (1, 174, 'delta_x', 0.60),
  (1, 175, 'x', 111.35),
  (1, 175, 'delta_x', 0.60),
  (1, 176, 'x', 111.95),
  (1, 176, 'delta_x', 0.60),
  (1, 177, 'x', 112.55),
  (1, 177, 'delta_x', 0.60),
  (1, 178, 'x', 113.15),
  (1, 178, 'delta_x', 0.60),
  (1, 179, 'x', 113.75),
  (1, 179, 'delta_x', 0.60),
  (1, 180, 'x', 114.35),
  (1, 180, 'delta_x', 0.60),
  (1, 181, 'x', 114.95),
  (1, 181, 'delta_x', 0.60),
  (1, 182, 'x', 115.55),
  (1, 182, 'delta_x', 0.60),
  (1, 183, 'x', 116.15),
  (1, 183, 'delta_x', 0.60),
  (1, 184, 'x', 116.75),
  (1, 184, 'delta_x', 0.60),
  (1, 185, 'x', 117.35),
  (1, 185, 'delta_x', 0.60),
  (1, 186, 'x', 117.95),
  (1, 186, 'delta_x', 0.60),
  (1, 187, 'x', 118.55),
  (1, 187, 'delta_x', 0.60);