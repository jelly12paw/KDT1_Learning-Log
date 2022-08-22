-- 연습용 테이블
CREATE TABLE users (
    id INT PRIMARY KEY,
    name TEXT,
    role_id INT);

INSERT INTO users VALUES
    (1, '관리자', 1),
    (2, '김철수', 2),
    (3, '이영희', 2);

CREATE TABLE role (
    id INT PRIMARY KEY,
    title TEXT);

INSERT INTO role VALUES
    (1, 'admin'),
    (2, 'staff'),
    (3, 'student');

CREATE TABLE articles (
    id INT PRIMARY KEY,
    title TEXT,
    content TEXT,
    user_id INT);

INSERT INTO articles VALUES
    (1, '1번글', '111', 1),
    (2, '2번글', '222', 2),
    (3, '3번글', '333', 1),
    (4, '4번글', '444', NULL);



-- INNER JOIN
SELECT *
FROM users u
INNER JOIN role r
ON u.role_id = r.id;

-- 1|관리자|1|1|admin
-- 2|김철수|2|2|staff
-- 3|이영희|2|2|staff

SELECT u.name, r.title
FROM users u
JOIN role r
ON u.role_id = r.id;

-- 관리자|admin
-- 김철수|staff
-- 이영희|staff

-- 스태프(2)만 출력

SELECT *
FROM users u
JOIN role r
ON u.role_id = r.id
WHERE r.id = 2;

-- 2|김철수|2|2|staff
-- 3|이영희|2|2|staff

-- 이름을 내림차순으로 정렬

SELECT *
FROM users u
JOIN role r
ON u.role_id = r.id
ORDER BY u.name DESC;

-- 3|이영희|2|2|staff
-- 2|김철수|2|2|staff
-- 1|관리자|1|1|admin

-- LEFT OUTER JOIN

SELECT *
FROM articles a
LEFT OUTER JOIN users u
ON a.user_id = u.id;

-- 1|1번글|111|1|1|관리자|1
-- 2|2번글|222|2|2|김철수|2
-- 3|3번글|333|1|1|관리자|1
-- 4|4번글|444||||

-- NULL값을 제외한 값만 출력

SELECT *
FROM articles a
LEFT OUTER JOIN users u
ON a.user_id = u.id
WHERE a.user_id IS NOT NULL;

-- 1|1번글|111|1|1|관리자|1
-- 2|2번글|222|2|2|김철수|2
-- 3|3번글|333|1|1|관리자|1

-- FULL OUTER JOIN

SELECT *
FROM articles a
FULL OUTER JOIN users u
ON a.user_id = u.id;

-- 1|1번글|111|1|1|관리자|1
-- 2|2번글|222|2|2|김철수|2
-- 3|3번글|333|1|1|관리자|1
-- 4|4번글|444||||
-- ||||3|이영희|2

-- CROSS JOIN

SELECT *
FROM users u
CROSS JOIN role r;

-- 1|관리자|1|1|admin
-- 1|관리자|1|2|staff
-- 1|관리자|1|3|student
-- 2|김철수|2|1|admin
-- 2|김철수|2|2|staff
-- 2|김철수|2|3|student
-- 3|이영희|2|1|admin
-- 3|이영희|2|2|staff
-- 3|이영희|2|3|student
