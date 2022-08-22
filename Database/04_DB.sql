-- gender가 1이면 남자 gender가 2면 여자로 표기

SELECT id, gender
    CASE
        WHEN gender = 1 THEN '남자'
        WHEN gender = 2 THEN '여자'
    END AS 성별
FROM healthcare
LIMIT 5;

-- smoking 정도에 따라 비흡연자, 흡연자, 헤비스모커로 표기
-- 공백은 무응답

SELECT id, smoking
    CASE 
        WHEN smoking = 1 THEN '비흡연자'
        WHEN smoking = 2 THEN '흡연자'
        WHEN smoking = 3 THEN '헤비스모커'
        ELSE '무응답'
    END
FROM healthcare
LIMIT 50;

-- 나이에 따라 구분
-- 청소년 (~18) 청년(~40) 중장년(~90)

SELECT id, age
    CASE
        WHEN age < 19 THEN '청소년'
        WHEN age < 41 THEN '청년'
        WHEN age < 91 THEN '중장년'
        ELSE '노년'
    END
FROM users
LIMIT 50;

-- users에서 가장 어린 사람의 수

SELECT age, COUNT(*)
FROM users
GROUP BY age
ORDER BY age
LIMIT 1;

SELECT age, COUNT(*)
FROM users
WHERE age = (
    SELECT MIN(age)
    FROM users);

-- 단일행 서브쿼리 (WHERE문)
-- users에서 평균 계좌 잔고가 가장 큰 사람의 수

SELECT balance, COUNT(*)
FROM users
WHERE balance > (
    SELECT AVG(balance)
    FROM users);

-- users에서 유은정과 같은 지역에 사는 사람의 수

SELECT country, COUNT(*)
FROM users
WHERE country = (
    SELECT country
    FROM users
    WHERE last_name = '유' AND first_name = '은정');

SELECT country, COUNT(*)
FROM users
WHERE country = (
    SELECT country
    FROM users
    WHERE last_name || first_name = '유은정');


-- 동명이인 이은정(전라북도, 경상북도)과 같은 지역에 사는 사람의 수

SELECT country, COUNT(*)
FROM users
WHERE country IN (
    SELECT country
    FROM users
    WHERE last_name = '이' AND first_name = '은정');


-- 단일행 서브쿼리 (SELECT문)
-- 전체 인원과 평균 계좌잔고, 평균 나이

SELECT COUNT(*), AVG(balance), AVG(age)
FROM users;

SELECT 
    (SELECT COUNT(*)
     FROM users) AS 총인원, 
    (SELECT AVG(balance)
     FROM users) AS 계좌잔고, 
    (SELECT AVG(age)
     FROM users) AS 나이;

-- 단일행 서브쿼리 (UPDATE문)

UPDATE users
SET balance = (
    SELECT AVG(balance)
    FROM users);

-- 다중컬럼 서브쿼리
-- 특정 성씨별로 가장 어린 나이의 사람

SELECT last_name, first_name, age
FROM users
WHERE (last_name, age) IN (
    SELECT last_name, MIN(age)
    FROM users
    GROUP BY last_name)
ORDER BY last_name;