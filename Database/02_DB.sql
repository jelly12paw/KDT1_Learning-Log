-- SQLite

CREATE TABLE users (
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    age INTEGER NOT NULL,
    country TEXT NOT NULL,
    phone TEXT NOT NULL,
    balance INTEGER NOT NULL
);

-- 데이터 추가
.mode csv

-- users.csv 파일을 users 테이블로 옮기기
.import users.csv users

-- age가 30이상인 유저의 모든 컬럼 정보 조회
SELECT * FROM users WHERE age >= 30;

-- age가 30이상인 유저의 이름 3개만 조회
SELECT first_name FROM users WHERE age >= 30 LIMIT 3;

-- age가 30이상이고 last_name이 김인 사람
SELECT * FROM users WHERE age >= 30 and last_name = '김';

-- age가 30이상인 사람
SELECT COUNT(*) FROM users WHERE age >= 30;

-- 가장 어린 나이
SELECT MIN(age) FROM users;

-- last_name이 이 중에 가장 어린 나이의 이름과 계좌잔고
SELECT MIN(age), first_name, balance FROM users WHERE last_name = '이';

-- age가 30이상인 사람의 평균 나이
SELECT AVG(age) FROM users WHERE age >= 30;

-- balance가 가장 높은 사람과 그 액수
SELECT first_name, MAX(balance) FROM users;

-- age가 30이상인 사람의 평균 balance
SELECT AVG(balance) FROM users WHERE age >= 30;

-- 지역번호가 02인 사람
SELECT * FROM users WHERE phone LIKE '02-%';

-- 준으로 끝나는 사람
SELECT * FROM users WHERE first_name LIKE '%준';

-- 중간 번호가 5114인 사람
SELECT * FROM users WHERE phone LIKE '%-5114-%';

-- 나이 오름차순
SELECT * FROM users ORDER BY age ASC LIMIT 10;

-- 나이, 성 순으로 오름차순
SELECT * FROM users ORDER BY age, last_name LIMIT 10;

-- 계좌 잔액 순 내림차순
SELECT * FROM users ORDER BY balance DESC LIMIT 10;

-- 계좌 잔액 내림차순, 성 씨 오름차순
SELECT * FROM users ORDER BY balance DESC, last_name ASC LIMIT 10;
