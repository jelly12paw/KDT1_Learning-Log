## 문제

### 1. 추가되어 있는 모든 데이터의 수를 출력하시오.

```sql
SELECT COUNT(*) FROM healthcare;
```

```
COUNT(*)
1000000
```

### 2. 연령 코드(age)의 최대, 최소 값을 모두 출력하시오. 

```sql
SELECT MAX(age), MIN(age) FROM healthcare;
```

```
MAX(age),MIN(age)
18,9
```

### 3. 신장(height)과 체중(weight)의 최대, 최소 값을 모두 출력하시오.

```sql
SELECT MAX(height), MIN(height), MAX(weight), MIN(weight) FROM healthcare;
```

```
MAX(height),MIN(height),MAX(weight),MIN(weight)
195,130,135,30
```

### 4. 신장(height)이 160이상 170이하인 사람은 몇 명인지 출력하시오.

```sql
SELECT COUNT(*) FROM healthcare WHERE height BETWEEN 160 AND 170;
```

```
COUNT(*)
516930
```

### 5. 음주(is_drinking)를 하는 사람(1)의 허리 둘레(waist)를 높은 순으로 5명 출력하시오. 

```sql
SELECT waist FROM healthcare WHERE is_drinking=1 AND waist != '' ORDER BY waist DESC LIMIT 5;
```

```
waist
146.0
142.0
141.4
140.0
140.0
```

### 6. 시력 양쪽(va_left, va_right)이 1.5이상이면서 음주(is_drinking)를 하는 사람의 수를 출력하시오.

```sql
SELECT COUNT(*) FROM healthcare WHERE va_left >= 1.5 AND va_right >= 1.5 AND is_drinking = 1;
```

```
COUNT(*)
36697
```

### 7. 혈압(blood_pressure)이 정상 범위(120미만)인 사람의 수를 출력하시오.

```sql
SELECT COUNT(*) FROM healthcare WHERE blood_pressure < 120;
```

```
COUNT(*)
360808
```

### 8. 혈압(blood_pressure)이 140이상인 사람들의 평균 허리둘레(waist)를 출력하시오.

```sql
SELECT AVG(waist) FROM healthcare WHERE blood_pressure >= 140;
```

```
AVG(waist)
85.8665098512525
```

### 9. 성별(gender)이 1인 사람의 평균 키(height)와 평균 몸무게(weight)를 출력하시오.

```sql
SELECT AVG(height), AVG(weight) FROM healthcare WHERE gender = 1;
```

```
AVG(height),AVG(weight)
167.452735422145,69.7131620222875
```

### 10. 키가 가장 큰 사람 중에 두번째로 무거운 사람의 id와 키(height), 몸무게(weight)를 출력하시오.

```sql
SELECT id, MAX(height), weight FROM healthcare ORDER BY weight DESC LIMIT 1 OFFSET 1;

SELECT id, height, weight FROM healthcare WHERE height = 195 ORDER BY weight DESC LIMIT 1 OFFSET 1;
```

```
id,height,weight
836005,195,110
```

### 11. BMI가 30이상인 사람의 수를 출력하시오. 

> BMI는 체중/(키*키)의 계산 결과이다. 
> 키는 미터 단위로 계산한다.

```sql
SELECT COUNT(*) FROM healthcare WHERE (weight/(height*height*0.0001)) >= 30;
```

```
COUNT(*)
53121
```

### 12. 흡연(smoking)이 3인 사람의 BMI지수가 제일 높은 사람 순서대로 5명의 id와 BMI를 출력하시오.

> BMI는 체중/(키*키)의 계산 결과이다. 
> 키는 미터 단위로 계산한다.

```sql
SELECT id, weight/(height*height*0.0001) AS BMI FROM healthcare WHERE smoking = 3 ORDER BY BMI DESC LIMIT 5;
```

```
id,BMI
231431,50.78125
934714,49.9479708636837
722707,48.828125
947281,47.7502295684114
948801,47.7502295684114
```

### 13. 자유롭게 쿼리를 작성해주시고, 결과와 함께 공유해주세요.
4가 포함된 sido의 평균 나이, 최대 나이, 최소 나이

```sql
SELECT AVG(age), MAX(age), MIN(age) FROM healthcare WHERE sido LIKE '4%'; 
```

```
AVG(age),MAX(age),MIN(age)
11.9198445679936,18,9
```

### 14. 자유롭게 쿼리를 작성해주시고, 결과와 함께 공유해주세요.
10대에 포함된 나이를 중복 값 제거하고 오름차순으로 출력

```sql
SELECT DISTINCT age FROM healthcare WHERE age LIKE '1_' ORDER BY age;
```

```
age
10
11
12
13
14
15
16
17
18
```

### 15. 자유롭게 쿼리를 작성해주시고, 결과와 함께 공유해주세요.
age가 10이 아니고 sido가 41, va_left가 2.0이 아니고 gender가 2가 아니고 heigth가 190미만이 아닌 사람의 수

```sql
SELECT COUNT(*) FROM healthcare WHERE age != 10
                            AND sido = 41
                            AND va_left <> 2.0
                            AND NOT gender = 2
                            AND NOT height < 190;
```

```
COUNT(*)
89
```