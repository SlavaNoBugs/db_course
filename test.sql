CREATE TABLE student (
    id         SERIAL PRIMARY KEY,
    name       VARCHAR(255) NOT NULL,
    surname    VARCHAR(255) NOT NULL,
    n_group    INTEGER NOT NULL,
    score      NUMERIC(3,2),
    address    VARCHAR(3000),
    date_birth DATE,
    email      VARCHAR(255) UNIQUE
);

CREATE TABLE hobby (
    id    SERIAL PRIMARY KEY,
    name  VARCHAR(255) NOT NULL,
    risk  INTEGER NOT NULL CHECK (risk >= 1 AND risk <=10)
);

CREATE TABLE student_hobby (
    id          SERIAL PRIMARY KEY,
    student_id  INTEGER NOT NULL REFERENCES student(id),
    hobby_id    INTEGER NOT NULL REFERENCES hobby(id),
    date_start  DATE NOT NULL,
    date_finish DATE
);
INSERT INTO student (name, surname, n_group, score, address, date_birth,email)
VALUES ('Вячеслав', 'Загвоздкин', '2254', '4.51', 'Ярославль', '2003-01-24', 'zagvozdkin12@gmail.com');
INSERT INTO student (name, surname, n_group, score, address, date_birth,email)
VALUES ('Евгений', 'Чернов', '4254', '4.20', 'Дубна', '2001-02-25', 'dkin12@gmail.com');
INSERT INTO student (name, surname, n_group, score, address, date_birth,email)
VALUES ('Артем', 'Кари', '3224', '3.00', 'Москва', '2002-05-29', 'kar@gmail.com');
INSERT INTO student (name, surname, n_group, score, address, date_birth,email)
VALUES ('Никита', 'Фадеев', '2254', '4.31', 'Кострома', '2004-08-12', 'fad@gmail.com');
INSERT INTO student (name, surname, n_group, score, address, date_birth,email)
VALUES ('Вячеслав', 'Кузнецов', '1111', '5.00', 'Санкт-Петербург', '1999-12-01', 'kuz@gmail.com');
INSERT INTO student (name, surname, n_group, score, address, date_birth,email)
VALUES ('Артем', 'Картон', '5224', '4.00', 'Астрахань', '2005-05-29', 'karton@gmail.com');
INSERT INTO student (name, surname, n_group, score, address, date_birth,email)
VALUES ('Денис', 'Бочков', '2184', '3.15', 'Новгород', '2003-05-29', 'sdfgsf123@gmail.com');
INSERT INTO student (name, surname, n_group, score, address, date_birth,email)
VALUES ('Дмитрий', 'Карповский', '3214', '5.00', 'Ярослаль', '2003-05-07', 'kafka@gmail.com');
INSERT INTO student (name, surname, n_group, score, address, date_birth,email)
VALUES ('София', 'Красовская', '2984', '4.45', 'Ярославль', '2000-03-11', 'Sonya@gmail.com');
INSERT INTO student (name, surname, n_group, score, address, date_birth,email)
VALUES ('Анатолий', 'Шемет', '6224', '4.00', 'Екатеринбург', '1999-04-29', 'marinovaniy@gmail.com');
INSERT INTO student (name, surname, n_group, score, address, date_birth,email)
VALUES ('Иван', 'Донченко', '4224', '2.00', 'Киров', '2001-08-19', 'Donch@gmail.com');
INSERT INTO student (name, surname, n_group, score, address, date_birth,email)
VALUES ('Илья', 'Гусь', '1234', '3.59', 'Нижнекамск', '2002-12-03', 'gus@gmail.com');
INSERT INTO hobby (name, risk)
VALUES ('Футбол', '5');
INSERT INTO hobby (name, risk)
VALUES ('Баскетбол', '7');
INSERT INTO hobby (name, risk)
VALUES ('Тенис', '3');
INSERT INTO hobby (name, risk)
VALUES ('Спринт', '4');
INSERT INTO hobby (name, risk)
VALUES ('Кроссфит', '8');
INSERT INTO hobby (name, risk)
VALUES ('Борьба', '8');
INSERT INTO hobby (name, risk)
VALUES ('Бокс', '10');
INSERT INTO hobby (name, risk)
VALUES ('Шахматы', '1');
INSERT INTO hobby (name, risk)
VALUES ('Карате', '6');
INSERT INTO hobby (name, risk)
VALUES ('Хоккей', '8');
INSERT INTO hobby (name, risk)
VALUES ('Скалолазание', '10');
INSERT INTO hobby (name, risk)
VALUES ('Канатоходство', '8');
INSERT INTO hobby (name, risk)
VALUES ('Рэгби', '9');
INSERT INTO hobby (name, risk)
VALUES ('Лыжи', '6');
INSERT INTO hobby (name, risk)
VALUES ('Стрельба', '9');
INSERT INTO hobby (name, risk)
VALUES ('Плавание', '2');
INSERT INTO student_hobby (student_id, hobby_id, date_start, date_finish)
VALUES ('1', '1','2011-12-01','2022-04-17');
INSERT INTO student_hobby(student_id, hobby_id, date_start, date_finish)
VALUES ('3', '2','2012-07-01','2014-12-01');
INSERT INTO student_hobby (student_id, hobby_id, date_start, date_finish)
VALUES ('4', '3','2013-08-01','2022-05-11');
INSERT INTO student_hobby (student_id, hobby_id, date_start, date_finish)
VALUES ('5', '5','2014-11-01','2017-04-23');
INSERT INTO student_hobby (student_id, hobby_id, date_start, date_finish)
VALUES ('6', '6','2015-12-01','2019-12-12');
INSERT INTO student_hobby(student_id, hobby_id, date_start, date_finish)
VALUES ('7', '4','2016-09-01','2021-02-21');
INSERT INTO student_hobby (student_id, hobby_id, date_start, date_finish)
VALUES ('8', '8','2009-01-01','2023-11-11');
INSERT INTO student_hobby (student_id, hobby_id, date_start, date_finish)
VALUES ('9', '6','2008-05-06','2023-12-08');
INSERT INTO student_hobby (student_id, hobby_id, date_start, date_finish)
VALUES ('10', '9','2007-07-05','2015-05-06');
INSERT INTO student_hobby (student_id, hobby_id, date_start, date_finish)
VALUES ('11', '10','2010-01-04','2017-12-16');
INSERT INTO student_hobby (student_id, hobby_id, date_start, date_finish)
VALUES ('12', '11','2011-12-01','2012-02-14');
INSERT INTO student_hobby (student_id, hobby_id, date_start, date_finish)
VALUES ('13', '13','2005-03-03','2013-12-24');
INSERT INTO student_hobby (student_id, hobby_id, date_start, date_finish)
VALUES ('12', '12','2013-04-02','2022-12-30');
INSERT INTO student_hobby (student_id, hobby_id, date_start, date_finish)
VALUES ('1', '14','2012-09-14','2021-12-11');
INSERT INTO student_hobby (student_id, hobby_id, date_start, date_finish)
VALUES ('10', '15','2010-12-03','2020-12-27');
INSERT INTO student_hobby (student_id, hobby_id, date_start, date_finish)
VALUES ('5', '12','2014-10-02','2018-12-17');
INSERT INTO student_hobby (student_id, hobby_id, date_start, date_finish)
VALUES ('6', '16','2011-11-11','2017-11-11');
INSERT INTO student_hobby (student_id, hobby_id, date_start)
VALUES ('5', '12','2014-10-02');
INSERT INTO student_hobby (student_id, hobby_id, date_start)
VALUES ('6', '16','2011-11-11');

--Запросы
SELECT * FROM student WHERE (score >= 4 AND score <=4.5);
SELECT * FROM student WHERE CAST(n_group AS VARCHAR) LIKE '2%';
SELECT * FROM student ORDER BY n_group DESC, name ASC;
SELECT * FROM student WHERE score > 4 ORDER BY score DESC ;
SELECT hobby.name, hobby.risk FROM hobby ORDER BY id ASC LIMIT 2;
SELECT student_hobby.hobby_id, student_hobby.student_id FROM student_hobby WHERE  (date_start > '2020-04-13' AND date_start < '2022-04-13')OR date_finish = null;
SELECT * FROM student WHERE score > 4.5 ORDER BY score DESC ;
--8
SELECT * FROM student WHERE score > 4.5 ORDER BY score DESC LIMIT 5;
SELECT * FROM student WHERE score > 4.5 ORDER BY score DESC LIMIT 5 OFFSET 0;
SELECT * FROM student WHERE score > 4.5 ORDER BY score DESC FETCH FIRST 5 ROWS ONLY;
--9
SELECT hobby.name,
 CASE
 WHEN risk >= 8 THEN 'очень высокий'
 WHEN (risk>=6 AND risk < 8) THEN 'высокий'
 WHEN (risk>=4 AND risk<6) THEN 'средний'
 WHEN (risk>=2 AND risk<4) THEN 'низкий'
 WHEN risk < 2 THEN 'очень низкий'
 ELSE 'Мы точно никогда не выведем это сообщение'
END
FROM hobby
--10
SELECT * FROM hobby ORDER BY risk DESC LIMIT 3;

