BEGIN;

TRUNCATE
   users
  RESTART IDENTITY CASCADE;

INSERT INTO users (name, email, registered, role)
VALUES

('John Doe','demo@goodcompany.com','2018/01/01','Project Manager'),
('Samppa Nori','demo@goodcompany.com','2018/01/01','Developer'  ),
('Estavan Lykos','demo@goodcompany.com','2018/02/01','Tech lead'),
('Chetan Mohamed','demo@goodcompany.com','2018/02/01','Admin'),
('Derick Maximinus','demo@goodcompany.com','2018/03/01','Developer'),
('Friderik Dávid','demo@goodcompany.com','2018/01/21','Tech lead'),
('Yiorgos Avraamu','demo@goodcompany.com','2018/01/01','Developer'),
('Avram Tarasios','demo@goodcompany.com','2018/02/01','Tech lead'),
('Quintin Ed','demo@goodcompany.com','2018/02/01','Admin'),
('Enéas Kwadwo','demo@goodcompany.com','2018/03/01','Developer'),
('Agapetus Tadeáš','demo@goodcompany.com','2018/01/21','Tech lead'),
('Carwyn Fachtna','demo@goodcompany.com','2018/01/01','Developer'),
('Nehemiah Tatius','demo@goodcompany.com','2018/02/01',''),
('Ebbe Gemariah','demo@goodcompany.com','2018/02/01',''),
('Eustorgios Amulius','demo@goodcompany.com','2018/03/01','Developer'),
('Leopold Gáspár','demo@goodcompany.com','2018/01/21','Tech lead'),
('Pompeius René','demo@goodcompany.com','2018/01/01','Developer'),
('Paĉjo Jadon','demo@goodcompany.com','2018/02/01',''),
('Micheal Mercurius','demo@goodcompany.com','2018/02/01',''),
('Ganesha Dubhghall','demo@goodcompany.com','2018/03/01',''),
('Hiroto Šimun','demo@goodcompany.com','2018/01/21',''),
('Vishnu Serghei','demo@goodcompany.com','2018/01/01',''),
('Daniel Wu','demo@goodcompany.com','2018/02/01',''),
('Grace Cheng','demo@goodcompany.com','2018/01/01','');

COMMIT;

