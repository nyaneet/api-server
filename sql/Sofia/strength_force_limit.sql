TRUNCATE TABLE strength_force_limit;

INSERT INTO strength_force_limit
    (ship_id, frame_x, value, limit_type, limit_area, force_type)
VALUES
    (2, 18.6, -110507, 'low', 'sea', 'bending_moment'),
    (2, 39.32, -226258, 'low', 'sea', 'bending_moment'),
    (2, 91.12, -226258, 'low', 'sea', 'bending_moment'),
    (2, 119.98, -37507, 'low', 'sea', 'bending_moment'),
    (2, 18.6, 86516, 'high', 'sea', 'bending_moment'),
    (2, 39.32, 250572, 'high', 'sea', 'bending_moment'),
    (2, 91.12, 250572, 'high', 'sea', 'bending_moment'),
    (2, 119.98, 62855, 'high', 'sea', 'bending_moment'),
    (2, 18.64, -12418, 'low', 'sea', 'shear_force'),
    (2, 39.32, -28400, 'low', 'sea', 'shear_force'),
    (2, 91.12, -28400, 'low', 'sea', 'shear_force'),
    (2, 119.98, -11000, 'low', 'sea', 'shear_force'),
    (2, 18.64, 12418, 'high', 'sea', 'shear_force'),
    (2, 39.32, 28400, 'high', 'sea', 'shear_force'),
    (2, 91.12, 28400, 'high', 'sea', 'shear_force'),
    (2, 119.98, 11000, 'high', 'sea', 'shear_force'),
    (2, 18.6, -198400, 'low', 'harbor', 'bending_moment'),
    (2, 39.32, -314170, 'low', 'harbor', 'bending_moment'),
    (2, 91.12, -314170, 'low', 'harbor', 'bending_moment'),
    (2, 119.98, -90000, 'low', 'harbor', 'bending_moment'),
    (2, 18.6, 198400, 'high', 'harbor', 'bending_moment'),
    (2, 39.32, 314170, 'high', 'harbor', 'bending_moment'),
    (2, 91.12, 314170, 'high', 'harbor', 'bending_moment'),
    (2, 119.98, 90000, 'high', 'harbor', 'bending_moment'),
    (2, 18.64, -12418, 'low', 'harbor', 'shear_force'),
    (2, 39.32, -28400, 'low', 'harbor', 'shear_force'),
    (2, 91.12, -28400, 'low', 'harbor', 'shear_force'),
    (2, 119.98, -11000, 'low', 'harbor', 'shear_force'),
    (2, 18.64, 12418, 'high', 'harbor', 'shear_force'),
    (2, 39.32, 28400, 'high', 'harbor', 'shear_force'),
    (2, 91.12, 28400, 'high', 'harbor', 'shear_force'),
    (2, 119.98, 11000, 'high', 'harbor', 'shear_force');