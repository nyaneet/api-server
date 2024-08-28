--
INSERT INTO hold_group
    (id, project_id, ship_id, space_id, name)
VALUES
    (1, NULL, 1, 1, 'Трюм');
--
INSERT INTO bulkhead_place
    (id, project_id, ship_id, space_id, name, hold_group_id, bound_x1, bound_x2, mass_shift_x, mass_shift_y, mass_shift_z)
VALUES
    (1, NULL, 1, 61, '113 шп.',  1,  12.696,     13.086,     12.87,  0,  4.53),
    (2, NULL, 1, 62, '51 шп.',   1,  -27.604,    -27.214,    -27.43, 0,  4.53),
    (3, NULL, 1, 63, '28 шп.',   1,  -42.749,    -42.359,    -42.57, 0,  4.53),
    (4, NULL, 1, 64, '27 шп.',   1,  -43.204,    -42.814,    -42.96, 0,  4.53);
--
INSERT INTO hold_part
    (id, project_id, ship_id, space_id, group_id, group_index, left_bulkhead_place_id, right_bulkhead_place_id, bound_x1, bound_x2, volume_max, svg_paths)
VALUES
    (1, NULL, 1, 51, 1, 1,   1,      NULL,   12.956,     37.656,     1848.75,
        '{
            "xy": " M 37.656,4.7 L 36.356,4.7 L 36.356,3.59 L 37.656,3.59 L 37.656,-3.59 L 36.356,-3.59  L 36.356,-4.7 L 37.656,-4.7 L 37.656,-5.2 L 12.956,-5.2 L 12.956,5.2 L 37.656,5.2  z ",
            "xz": " M 36.356,6.84999 L 37.656,6.84999 L 37.656,0.819992 L 12.956,0.819992 L 12.956,8.23 L 36.356,8.23  z ",
            "yz": " M 5.2,0.819992 L -5.2,0.819992 L -5.2,8.23 L 5.2,8.23 z "
        }'
    ),
    (2, NULL, 1, 52, 1, 2,   2,      1,      -27.344,    12.956,     3074.62,
        '{
            "xy": " M 12.956,-5.2 L -27.344,-5.2 L -27.344,5.2 L 12.956,5.2 z ",
            "xz": " M 12.956,0.819992 L -27.344,0.819992 L -27.344,8.23 L 12.956,8.23 z ",
            "yz": " M 5.2,0.819992 L -5.2,0.819992 L -5.2,8.23 L 5.2,8.23 z "
        }'
    ),
    (3, NULL, 1, 53, 1, 3,   NULL,   2,      -44.194,    -27.344,    1292.0,
        '{
            "xy": " M -27.344,-5.2 L -44.194,-5.2 L -44.194,-0.979996 L -45.394,-0.979996 L -45.394,-0 L -44.194,-0  L -44.194,5.2 L -27.344,5.2 z ",
            "xz": " M -27.344,0.819992 L -45.394,0.819992 L -45.394,6.84999 L -44.194,6.84999 L -44.194,8.23 L -27.344,8.23  z ",
            "yz": " M 5.2,0.819992 L -5.2,0.819992 L -5.2,8.23 L 5.2,8.23 z "
        }'
    );
--
INSERT INTO bulkhead
    (id, project_id, ship_id, name, mass, category_id)
VALUES
    (1, NULL, 1, 'Зерновая переборка №1', 12.0, 21),
    (2, NULL, 1, 'Зерновая переборка №2', 12.0, 21);