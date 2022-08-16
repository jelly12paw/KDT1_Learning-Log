-- SQLite
-- classmate Table 생성

CREATE TABLE classmates (
    id INTEGER PRIMARY KEY,
    name TEXT
);

-- 테이블 목록 조회

.tables

-- 특정 테이블 스키마 조회

.schema classmates

-- 값 추가

INSERT INTO classmates VALUES (1, '조세호');

INSERT INTO classmates VALUES (2, '유재석');

-- 테이블 조회

SELECT * FROM classmates;

-- 테이블 삭제

DROP TABLE classmates;

-- Table 생성 연습

CREATE TABLE classmates (
    name TEXT,
    age INT,
    address TEXT
);

-- 제약 조건 연습

CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER DEFAULT 1 CHECK (0 < age)
);

-- classmates 테이블에 이름 : 홍길동, 나이 : 23인 데이터 삽입 후 SELECT문으로 확인

INSERT INTO classmates(name, age) VALUES ('홍길동', 23);

SELECT * FROM classmates;

-- classmates 테이블에 이름 : 홍길동, 나이 : 23, 주소 : 서울인 데이터 삽입 후 SELECT문으로 확인

INSERT INTO classmates(name, age, address) VALUES ('홍길동', 23, '서울');

INSERT INTO classmates VALUES ('홍길동', 23, '서울');

SELECT * FROM classmates;

-- rowid
-- SQLite에서 자동으로 제공하고 있는 PK
-- 값이 1 씩 증가한다

SELECT rowid, * FROM classmates;

-- rowid  name  age  address
-- -----  ----  ---  -------
-- 1      홍길동   23
-- 2      홍길동   23   서울

-- NOT NULL 제약 조건 사용하여 테이블 생성

CREATE TABLE classmates (
    name TEXT NOT NULL,
    age INT NOT NULL,
    address TEXT NOT NULL
);

-- classmates 테이블에 아래의 정보를 삽입
-- 홍길동 / 30 / 서울
-- 김철수 / 30 / 제주
-- 이호영 / 26 / 인천
-- 박민희 / 29 / 대구
-- 최혜영 / 28 / 전주

INSERT INTO classmates VALUES
('홍길동', 30, '서울'),
('김철수', 30, '제주'),
('이호영', 26, '인천'),
('박민희', 29, '대구'),
('최혜영', 28, '전주');

-- name  age  address
-- ----  ---  -------
-- 홍길동   30   서울
-- 김철수   30   제주
-- 이호영   26   인천
-- 박민희   29   대구
-- 최혜영   28   전주

-- classmates 테이블에서 rowid, name 컬럼만 조회

SELECT rowid, name FROM classmates;

-- rowid  name
-- -----  ----
-- 1      홍길동
-- 2      김철수
-- 3      이호영
-- 4      박민희
-- 5      최혜영

-- classmates 테이블에서 rowid, name 컬럼 값을 하나만 조회

SELECT rowid, name FROM classmates LIMIT 1;

-- rowid  name
-- -----  ----
-- 1      홍길동

-- classmates 테이블에서 rowid, name 컬럼 값을 세 번째에 있는 하나만 조회

SELECT rowid, name FROM classmates LIMIT 1 OFFSET 2;

-- rowid  name
-- -----  ----
-- 3      이호영

-- classmates 테이블에서 rowid, name 컬럼 값 중 주소가 서울인 경우 조회

SELECT rowid, name FROM classmates WHERE address = '서울';

-- rowid  name
-- -----  ----
-- 1      홍길동

-- classmates 테이블에서 age값 전체를 중복없이 조회

SELECT DISTINCT age FROM classmates;

-- age
-- ---
-- 30
-- 26
-- 29
-- 28

-- 특정 값 삭제하기

DELETE FROM classmates WHERE rowid = 5;

-- name  age  address
-- ----  ---  -------
-- 홍길동   30   서울
-- 김철수   30   제주
-- 이호영   26   인천
-- 박민희   29   대구

-- 수정하기

UPDATE classmates SET address = '서울' WHERE rowid = 4;

-- rowid  name  age  address  |  rowid  name  age  address
-- -----  ----  ---  -------  |  -----  ----  ---  -------
-- 1      홍길동   30   서울   |  1      홍길동   30   서울
-- 2      김철수   30   제주   |  2      김철수   30   제주
-- 3      이호영   26   인천   |  3      이호영   26   인천
-- 4      박민희   29   대구   |  4      박민희   29   서울