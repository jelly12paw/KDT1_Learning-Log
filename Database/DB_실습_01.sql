# 문제

### 1. 추가되어 있는 모든 데이터의 수를 출력하시오.

```sql
SELECT COUNT(*) FROM healthcare;
```

```
COUNT(*)
--------
1000000
```

### 2. 나이 그룹이 10(age)미만인 사람의 수를 출력하시오.

```sql
SELECT count(*) FROM healthcare WHERE age < 10;
```

```
count(*)
156277
```

### 3. 성별이 1인 사람의 수를 출력하시오.

```sql
SELECT count(*) FROM healthcare WHERE gender = 1;
```

```
count(*)
510689
```

### 4. 흡연 수치(smoking)가 3이면서 음주(is_drinking)가 1인 사람의 수를 출력하시오.

```sql
SELECT count(*) FROM healthcare WHERE smoking = 3 and is_drinking = 1;
```

```
count(*)
150361
```

### 5. 양쪽 시력이(va_left, va_right) 모두 2.0이상인 사람의 수를 출력하시오.

```sql
SELECT count(*) FROM healthcare WHERE va_left >= 2.0 and va_right >= 2.0;
```

```
count(*)
2614
```

### 6. 시도(sido)를 모두 중복 없이 출력하시오.

```sql
SELECT DISTINCT sido FROM healthcare;
```

```
sido
36
27
11
31
41
44
48
30
42
43
46
28
26
47
45
29
49
```

### 자유롭게 조합해서 원하는 데이터를 출력해보세요.

> 예) 허리 둘레가 70이상이면서 몸무게가 70이하인 사람
```sql
SELECT count(*) FROM healthcare WHERE waist >= 70 and weight >= 70;
```

```
count(*)
335113
```

> 키가 150이상 170이하인 사람
```sql
SELECT count(*) FROM healthcare WHERE height >= 150 and height <= 170;
```

```
count(*)
826791
```

> 나이가 10미만이거나 혈압이 140초과인 사람
```sql
SELECT count(*) FROM healthcare WHERE age < 10 or blood_pressure > 140;
```

```
count(*)
268910
```