BEGIN;

TRUNCATE
   projects
  RESTART IDENTITY CASCADE;

INSERT INTO projects (name, description, status, start_date, target_end_date, actutal_end_date, create_on, create_by, modified_on, modified_by, visible)
VALUES
('Spaced Repetition', 'A language learning application allows users to learn new words by practicing repeatedly', 'Active', '2021-02-01', '2021-02-17', '2021-02-17', '2021-02-01', 'John Demo', '2021-02-17', 'John Demo', 'false'),
('Amazon Clone', 'An online retailer providing customers with a variety of products for purchase', 'Inactive', '2021-01-03', '2021-01-17', '2021-01-17', '2021-01-03', 'Grace Cheng', '2021-01-17', 'Grace Cheng', 'false'),
('Bug Tracker', 'An bug tracking system allows developer and manager to manage projects and tickets', 'Open', '2021-03-03', '2021-03-15', '2021-03-15', '2021-03-03', 'Samppa Nori', '2021-03-15', 'Samppa Nori', 'false'),
('Petful', 'A pet adoption service to help users adopt pets, the pets and users are all joining a line to wait for adoption', 'Banned', '2021-03-18', '2021-03-30', '2021-03-30', '2021-03-18', 'Chetan Mohamed', '2021-03-30', 'Chetan Mohamed', 'false'),
('Portfolio', 'Curabitur ullamcorper ultricies nisi. Nam eget dui', 'Active', '2020-11-16', '2020-11-30', '2020-11-30', '2020-11-16', 'Estavan Lykos', '2020-11-30', 'Estavan Lykos', 'false'),
('Bookmark', 'An bookmark management application characterized by the folders which it is easy to use', 'Pending', '2021-11-15', '2020-11-30', '2020-11-30', '2021-11-15', 'Joe Lykos', '2020-11-30', 'Joe Lykos', 'false'),
('Blogful', 'Maecenas tempus, tellus eget condimentum rhoncus', 'Pending', '2021-11-15', '2020-11-30', '2020-11-30', '2021-11-15', 'Joe Lykos', '2020-11-30', 'Joe Lykos', 'false'),
('Demo Project', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur', 'Active', '2021-02-01', '2021-02-17', '2021-02-17', '2021-02-01', 'John Demo', '2021-02-17', 'John Demo', 'false'),
('Fetch', 'Cum sociis natoque penatibus et magnis dis parturient montes', 'Inactive', '2021-01-03', '2021-01-17', '2021-01-17', '2021-01-03', 'Grace Cheng', '2021-01-17', 'Grace Cheng', 'false'),
('NYT', 'Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget', 'Active', '2021-03-18', '2021-03-30', '2021-03-30', '2021-03-18', 'Chetan Mohamed', '2021-03-30 15:21:08', 'Chetan Mohamed', 'false'),
('Pokedex', 'In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium', 'Inactive', '2020-11-05', '2020-11-30', '2020-11-30', '2020-11-05', 'Ethen Lykis', '2020-11-30', 'Ethen Lykis', 'false'),
('Shopping List', 'Vivamus elementum semper nisi. Aenean vulputate eleifend tellus', 'Pending', '2021-12-10', '2021-12-20', '2021-12-20', '2021-12-10', 'Estavan Lykos', '2020-12-20', 'Estavan Lykos', 'false'),
('Trelloyes', 'Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue', 'Open', '2021-03-25', '2021-04-10', '2021-04-10', '2021-03-25', 'Nehemiah Tatius', '2021-04-10', 'Nehemiah Tatius', 'false'),
('What to eat', 'Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem', 'Inactive', '2020-12-10', '2020-12-30', '2020-12-30', '2020-12-10', 'Ebbe Gemariah', '2020-12-30', 'Ebbe Gemariah', 'false'),
('Portfolio2', 'Maecenas nec odio et ante tincidunt tempus', 'Banned', '2021-04-16', '2021-04-30', '2021-04-30', '2021-04-16', 'Harry Ljctys', '2021-04-17', 'Harry Ljctys', 'false'),
('Noteful', 'An Note management application providing users to manage their notes by folder', 'Inactive', '2020-12-03', '2020-12-17', '2020-12-17', '2020-12-03', 'Quintin Ed', '2020-12-17', 'Quintin Ed', 'false');

COMMIT;



-- ('Spaced Repetition', 'A language learning application allows users to learn new words by practicing repeatedly', 'Active', '2021-02-01 10:22:45', '2021-02-17', '2021-02-17', '2021-02-01 10:21:58', 'John Demo', '2021-02-17 16:20:17', 'John Demo', 'false'),
-- ('Amazon Clone', 'An online retailer providing customers with a variety of products for purchase', 'Inactive', '2021-01-03 09:21:58', '2021-01-17', '2021-01-17', '2021-01-03 09:21:58', 'Grace Cheng', '2021-01-17 21:21:08', 'Grace Cheng'),
-- ('Bug Tracker', 'An bug tracking system allows developer and manager to manage projects and tickets', 'Open', '2021-03-03 11:21:58', '2021-03-15', '2021-03-15', '2021-03-03 11:21:58', 'Samppa Nori', '2021-03-15 21:21:08', 'Samppa Nori'),
-- ('Petful', 'A pet adoption service to help users adopt pets, the pets and users are all joining a line to wait for adoption', 'Banned', '2021-03-18 20:21:58', '2021-03-30', '2021-03-30', '2021-03-18 20:21:58', 'Chetan Mohamed', '2021-03-30 15:21:08', 'Chetan Mohamed'),
-- ('Portfolio', 'Curabitur ullamcorper ultricies nisi. Nam eget dui', 'Active', '2020-11-16 08:21:58', '2020-11-30', '2020-11-30', '2020-11-16 08:21:58', 'Estavan Lykos', '2020-11-30 21:21:08', 'Estavan Lykos'),
-- ('Bookmark', 'An bookmark management application characterized by the folders which it is easy to use', 'Pending', '2021-11-15 10:21:58', '2020-11-30', '2020-11-30', '2021-11-15 10:21:58', 'Joe Lykos', '2020-11-30 21:21:08', 'Joe Lykos'),
-- ('Blogful', 'Maecenas tempus, tellus eget condimentum rhoncus', 'Pending', '2021-11-15 10:21:58', '2020-11-30', '2020-11-30', '2021-11-15 10:21:58', 'Joe Lykos', '2020-11-30 21:21:08', 'Joe Lykos'),
-- ('Demo Project', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur', 'Active', '2021-02-01 10:21:58', '2021-02-17', '2021-02-17', '2021-02-01 10:21:58', 'John Demo', '2021-02-17 16:20:17', 'John Demo'),
-- ('Fetch', 'Cum sociis natoque penatibus et magnis dis parturient montes', 'Inactive', '2021-01-03 09:21:58', '2021-01-17', '2021-01-17', '2021-01-03 09:21:58', 'Grace Cheng', '2021-01-17 21:21:08', 'Grace Cheng'),
-- ('NYT', 'Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget', 'Active', '2021-03-18 20:21:58', '2021-03-30', '2021-03-30', '2021-03-18 20:21:58', 'Chetan Mohamed', '2021-03-30 15:21:08', 'Chetan Mohamed'),
-- ('Pokedex', 'In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium', 'Inactive', '2020-11-05 08:21:58', '2020-11-30', '2020-11-30', '2020-11-05 08:21:58', 'Ethen Lykis', '2020-11-30 21:21:08', 'Ethen Lykis'),
-- ('Shopping List', 'Vivamus elementum semper nisi. Aenean vulputate eleifend tellus', 'Pending', '2021-12-10 12:03:58', '2021-12-20', '2021-12-20', '2021-12-10 12:03:58', 'Estavan Lykos', '2020-12-20 21:21:08', 'Estavan Lykos'),
-- ('Trelloyes', 'Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue', 'Open', '2021-03-25 13:21:58', '2021-04-10', '2021-04-10', '2021-03-25 13:21:58', 'Nehemiah Tatius', '2021-04-10 23:21:08', 'Nehemiah Tatius'),
-- ('What to eat', 'Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem', 'Inactive', '2020-12-10 07:21:58', '2020-12-30', '2020-12-30', '2020-12-10 07:21:58', 'Ebbe Gemariah', '2020-12-30 20:21:08', 'Ebbe Gemariah'),
-- ('Portfolio2', 'Maecenas nec odio et ante tincidunt tempus', 'Banned', '2021-04-16 08:56:58', '2021-04-30', '2021-04-30', '2021-04-16 08:56:58', 'Harry Ljctys', '2021-04-17 21:21:08', 'Harry Ljctys'),
-- ('Noteful', 'An Note management application providing users to manage their notes by folder', 'Inactive', '2020-12-03 14:21:58', '2020-12-17', '2020-12-17', '2020-12-03 14:21:58', 'Quintin Ed', '2020-12-17 21:21:08', 'Quintin Ed');
