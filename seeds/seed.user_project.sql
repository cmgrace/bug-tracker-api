BEGIN;

TRUNCATE
   user_project
  RESTART IDENTITY CASCADE;

INSERT INTO user_project (project_id, user_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 10),
(1, 11),
(1, 12),

(2, 1),
(2, 2),
(2, 3),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 10),
(2, 11),
(2, 12),

(3, 1),
(3, 2),
(3, 3),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 10),
(3, 11),
(3, 12),

(4, 1),
(4, 2),
(4, 3),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 10),
(4, 11),
(4, 12),

(5, 1),
(5, 2),
(5, 3),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 10),
(5, 11),
(5, 12),

(6, 1),
(6, 2),
(6, 3),
(6, 5),
(6, 6),
(6, 7),
(6, 8),
(6, 10),
(6, 11),
(6, 12),

(7, 1),
(7, 2),
(7, 3),
(7, 5),
(7, 6),
(7, 7),
(7, 8),
(7, 10),
(7, 11),
(7, 12),

(8, 1),
(8, 2),
(8, 3),
(8, 5),
(8, 6),
(8, 7),
(8, 8),
(8, 10),
(8, 11),
(8, 12),

(9, 1),
(9, 2),
(9, 3),
(9, 5),
(9, 6),
(9, 7),
(9, 8),
(9, 10),
(9, 11),
(9, 12),

(10, 1),
(10, 2),
(10, 3),
(10, 5),
(10, 6),
(10, 7),
(10, 8),
(10, 10),
(10, 11),
(10, 12),

(11, 1),
(11, 2),
(11, 3),
(11, 5),
(11, 6),
(11, 7),
(11, 8),
(11, 10),
(11, 11),
(11, 12),

(12, 1),
(12, 2),
(12, 3),
(12, 5),
(12, 6),
(12, 7),
(12, 8),
(12, 10),
(12, 11),
(12, 12),

(13, 1),
(13, 2),
(13, 3),
(13, 5),
(13, 6),
(13, 7),
(13, 8),
(13, 10),
(13, 11),
(13, 12),

(14, 1),
(14, 2),
(14, 3),
(14, 5),
(14, 6),
(14, 7),
(14, 8),
(14, 10),
(14, 11),
(14, 12),

(15, 1),
(15, 2),
(15, 3),
(15, 5),
(15, 6),
(15, 7),
(15, 8),
(15, 10),
(15, 11),
(15, 12),

(16, 1),
(16, 2),
(16, 3),
(16, 5),
(16, 6),
(16, 7),
(16, 8),
(16, 10),
(16, 11),
(16, 12);

COMMIT;