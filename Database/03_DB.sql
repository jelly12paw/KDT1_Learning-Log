-- SQLite

-- 문자열 합치기 ||
-- 성+이름, 5명
SELECT last_name || first_name 이름,
FROM users
LIMIT 5;

-- 문자열 길이 LENGTH
SELECT LENGTH(first_name), first_name
FROM users
LIMIT 5;

-- 문자열 변경 REPLACE
SELECT REPLACE(phone, '-', '')
FROM users
LIMIT 5;

-- 숫자 활용
SELECT MOD(5, 2)
FROM users
LIMIT 1;

-- 올림, 내림, 반올림
SELECT CEIL(3.14), FLOOR(3.14), ROUND(3.14)
FROM users
LIMIT 1;

-- 제곱근
SELECT SQRT(9)
FROM users
LIMIT 5;

-- 제곱
SELECT POWER(9, 2)
FROM users
LIMIT 5;

-- 각 성씨가 몇 명 있는지 세기
SELECT last_name AS 성, COUNT(*)
FROM users
GROUP BY last_name;
