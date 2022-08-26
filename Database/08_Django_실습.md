# 데이터베이스 08 - ORM

### 1. `db/models.py` 파일에 아래의 모델 3개 `Director` `Genre` `Movie` 를 작성하세요.

> 기본 코드
> 

```python
class Director(models.Model):
    name = models.TextField()
    debut = models.DateTimeField()
    country = models.TextField()

class Genre(models.Model):
    title = models.TextField()

class Movie(models.Model):
    director = models.ForeignKey(Director,on_delete=models.CASCADE)
    genre = models.ForeignKey(Genre,on_delete=models.CASCADE)
    title = models.TextField()
    opening_date = models.DateField()
    running_time = models.IntegerField()
    screening = models.BooleanField()
```

### 2. 모델을 마이그레이트(migrate) 하세요.

```bash
# 가상환경 실행 확인 후 아래 명령어를 터미널에 입력합니다.
python manage.py makemigrations

python manage.py migrate
```

### 3. 아래 코드를 실행해서 데이터를 추가하세요.

```python
directors = [
    ("봉준호","1993-01-01","KOR"),
    ("김한민","1999-01-01","KOR"),
    ("최동훈","2004-01-01","KOR"),
    ("이정재","2022-01-01","KOR"),
    ("이경규","1992-01-01","KOR"),
    ("한재림","2005-01-01","KOR"),
    ("Joseph Kosinski","1999-01-01","KOR"),
    ("김철수","2022-01-01","KOR"),
]

for director in directors:
    name_ = director[0]
    debut_ = director[1]
    country_ = director[2]
    Director.objects.create(name=name_, debut=debut_, country=country_)

genres = ["액션","드라마","사극","범죄","스릴러","SF","무협","첩보","재난"]

for title_ in genres:
    genre = Genre()
    genre.title = title_
    genre.save()
```

### 4. Queryset 메소드 `get` 을 활용해서 `Director` 테이블에서 `name` 이 봉준호인 데이터를 아래와 같이 출력하는 코드를 작성하세요.

> 출력 예시
> 

```
id : 1
name : 봉준호
debut : 1993-01-01 00:00:00
country : KOR
```

> 코드 작성
> 

```python
bong = Director.objects.get(name='봉준호')

print(f'id : {bong.id}')
print(f'name : {bong.name}')
print(f'debut : {bong.debut}')
print(f'country : {bong.country}')
```

### 5. Queryset 메소드 `get` 을 활용해서 `Genre` 테이블에서 `title` 이 드라마인 데이터를 아래와 같이 출력하는 코드를 작성하세요.

> 출력 예시
> 

```
id : 2
title : 드라마
```

> 코드 작성
> 

```python
drama = Genre.objects.get(title='드라마')

print(f'id : {drama.id}')
print(f'title : {drama.title}')
```

### 6. 위 문제에서 찾은 `director` 와 `genre` 와 아래 `힌트 코드`를 활용해서 `Movie` 테이블에 아래 데이터를 추가하는 코드를 작성하세요.

| director | genre | title | opening_data | running_time | screening |
| --- | --- | --- | --- | --- | --- |
| 봉준호 | 드라마 | 기생충 | 2019-05-30 | 132 | False |

> 힌트 코드
> 

```python
director_ = Director.objects.get(name='봉준호')
genre_ = Genre.objects.get(title='드라마')

movie = Movie()

movie.director = director_
movie.genre = genre_
movie.title = '기생충'
movie.opening_date='2019-05-30'
movie.running_time = 132
movie.screening = False

movie.save()
```

> 코드 작성
> 

```python

```

### 7. `Movie` 테이블에 아래 데이터를 추가하는 코드를 작성하세요.

| director | genre | title | opening_date | running_time | screening |
| --- | --- | --- | --- | --- | --- |
| 봉준호 | 드라마 | 괴물 | 2006-07-27 | 119 | False |
| 봉준호 | SF | 설국열차 | 2013-10-30 | 125 | False |
| 김한민 | 사극 | 한산 | 2022-07-27 | 129 | True |
| 최동훈 | SF | 외계+인 | 2022-07-20 | 142 | False |
| 이정재 | 첩보 | 헌트 | 2022-08-10 | 125 | True |
| 이경규 | 액션 | 복수혈전 | 1992-10-10 | 88 | False |
| 한재림 | 재난 | 비상선언 | 2022-08-03 | 140 | True |
| Joseph Kosinski | 액션 | 탑건 : 매버릭 | 2022-06-22 | 130 | True |

```python
movies = [
    ("봉준호", "드라마", "괴물", "2006-07-27", 119, False),
    ("봉준호", "SF", "설국열차", "2013-10-30", 125, False),
    ("김한민", "사극", "한산", "2022-07-27", 129, True),
    ("최동훈", "SF", "외계+인", "2022-07-20", 142, False),
    ("이정재", "첩보", "헌트", "2022-08-10", 125, True),
    ("이경규", "액션", "복수혈전", "1992-10-10", 88, False),
    ("한재림", "재난", "비상선언", "2022-08-03", 140, True),
    ("Joseph Kosinski", "액션", "탑건 : 매버릭", "2022-06-22", 130, True),
]
```

> 코드 작성
> 

```python
movies = [
    ("봉준호", "드라마", "괴물", "2006-07-27", 119, False),
    ("봉준호", "SF", "설국열차", "2013-10-30", 125, False),
    ("김한민", "사극", "한산", "2022-07-27", 129, True),
    ("최동훈", "SF", "외계+인", "2022-07-20", 142, False),
    ("이정재", "첩보", "헌트", "2022-08-10", 125, True),
    ("이경규", "액션", "복수혈전", "1992-10-10", 88, False),
    ("한재림", "재난", "비상선언", "2022-08-03", 140, True),
    ("Joseph Kosinski", "액션", "탑건 : 매버릭", "2022-06-22", 130, True),
]

for movie in movies:
    director_name = movie[0]
    genre_title = movie[1]
    title_ = movie[2]
    opening_date_ = movie[3]
    running_time_ = movie[4]
    screening_ = movie[5]

    director_ = Director.objects.get(name=director_name)
    genre_ = Genre.objects.get(title=genre_title)

    movie = Movie()
    movie.director = director_
    movie.genre = genre_
    movie.title = title_
    movie.opening_date = opening_date_
    movie.running_time = running_time_
    movie.screening = screening_
    movie.save()
```

### 8. `Movie` 테이블의 모든 데이터를 출력하는 코드를 작성하세요.

> 예시 출력
> 

```
Director object (1) Genre object (2) 기생충 2019-05-30 132 False
Director object (1) Genre object (2) 괴물 2006-07-27 119 False
Director object (1) Genre object (6) 설국열차 2013-10-30 125 False
Director object (2) Genre object (3) 한산 2022-07-27 129 True
Director object (3) Genre object (6) 외계+인 2022-07-20 142 False
Director object (4) Genre object (8) 헌트 2022-08-10 125 True
Director object (5) Genre object (1) 복수혈전 1992-10-10 88 False
Director object (6) Genre object (9) 비상선언 2022-08-03 140 True
Director object (7) Genre object (1) 탑건 : 매버릭 2022-06-22 130 True
```

> 코드 작성
> 

```python
m = Movie.objects.all()
for i in m :
    print(i.director, i.genre, i.title, i.opening_date, i.running_time, i.screening)
```

### 9. 위 문제에서 조회한 `Director object (n)`  를 활용해서 각 영화의 감독 `name` 을 조회해서 대신 출력하는 코드를 작성하세요.

> 힌트 : 각각의 Director object (n)는 Director 모델의 인스턴스입니다.
> 

> 예시 출력
> 

```
봉준호 Genre object (2) 기생충 2019-05-30 132 False
봉준호 Genre object (2) 괴물 2006-07-27 119 False
봉준호 Genre object (6) 설국열차 2013-10-30 125 False
김한민 Genre object (3) 한산 2022-07-27 129 True
최동훈 Genre object (6) 외계+인 2022-07-20 142 False
이정재 Genre object (8) 헌트 2022-08-10 125 True
이경규 Genre object (1) 복수혈전 1992-10-10 88 False
한재림 Genre object (9) 비상선언 2022-08-03 140 True
Joseph Kosinski Genre object (1) 탑건 : 매버릭 2022-06-22 130 True
```

> 코드 작성
> 

```python
m = Movie.objects.all()
for i in m :
    print(i.director.name, i.genre, i.title, i.opening_date, i.running_time, i.screening)
```

### 10. 위 문제에서 조회한 `Genre object (n)`  를 활용해서 각 영화의 장르 `title` 을 조회해서 대신 출력하는 코드를 작성하세요.

> 힌트 : 각각의 Genre object (n)는 Genre 모델의 인스턴스입니다.
> 

> 예시 출력
> 

```
봉준호 드라마 기생충 2019-05-30 132 False
봉준호 드라마 괴물 2006-07-27 119 False
봉준호 SF 설국열차 2013-10-30 125 False
김한민 사극 한산 2022-07-27 129 True
최동훈 SF 외계+인 2022-07-20 142 False
이정재 첩보 헌트 2022-08-10 125 True
이경규 액션 복수혈전 1992-10-10 88 False
한재림 재난 비상선언 2022-08-03 140 True
Joseph Kosinski 액션 탑건 : 매버릭 2022-06-22 130 True
```

> 코드 작성
> 

```python
m = Movie.objects.all()
for i in m :
    print(i.director.name, i.genre.title, i.title, i.opening_date, i.running_time, i.screening)
```

### 11. 영화 데이터들을 `최신 개봉한 영화순`으로 조회해서 출력하는 코드를 작성하세요.

> 예시 출력
> 

```
이정재 첩보 헌트 2022-08-10 125 True
한재림 재난 비상선언 2022-08-03 140 True
김한민 사극 한산 2022-07-27 129 True
최동훈 SF 외계+인 2022-07-20 142 False
Joseph Kosinski 액션 탑건 : 매버릭 2022-06-22 130 True
봉준호 드라마 기생충 2019-05-30 132 False
봉준호 SF 설국열차 2013-10-30 125 False
봉준호 드라마 괴물 2006-07-27 119 False
이경규 액션 복수혈전 1992-10-10 88 False
```

> 코드 작성
> 

```python
lately_m = Movie.objects.order_by('-opening_date')
for j in lately_m :
    print(j.director.name, j.genre.title, j.title, j.opening_date, j.running_time, j.screening)
```

### 12. 영화 데이터 중 `가장 먼저 개봉한` 영화를 조회해서 출력하는 코드를 작성하세요.

> 예시 출력
> 

```
이경규 액션 복수혈전 1992-10-10 88 False
```

> 코드 작성
> 

```python
late_m = Movie.objects.order_by('opening_date')[0]
print(j.director.name, j.genre.title, j.title, j.opening_date, j.running_time, j.screening)
```

### 13. 영화 데이터 중 현재 `상영 중`인 영화들을 `개봉일 순`으로 조회해서 출력하는 코드를 작성하세요.

> 상영 중 `screening = True`
> 

> 예시 출력
> 

```
Joseph Kosinski 액션 탑건 : 매버릭 2022-06-22 130 True
김한민 사극 한산 2022-07-27 129 True
한재림 재난 비상선언 2022-08-03 140 True
이정재 첩보 헌트 2022-08-10 125 True
```

> 코드 작성
> 

```python
screen_t = Movie.objects.filter(screening=True).order_by('opening_date')
for s in screen_t :
    print(s.director.name, s.genre.title, s.title, s.opening_date, s.running_time, s.screening)
```

### 14. 영화 감독이 `봉준호` 인 영화들을 `개봉일 순`으로 조회해서 출력하는 코드를 작성하세요.

> 힌트 : `name`이 봉준호인 Director의 인스턴스가 필요합니다.
> 

> 예시 출력
> 

```
봉준호 드라마 괴물 2006-07-27 119 False
봉준호 SF 설국열차 2013-10-30 125 False
봉준호 드라마 기생충 2019-05-30 132 False
```

> 코드 작성
> 

```python
bong = Director.objects.get(name='봉준호')
bong_m = Movie.objects.filter(director=bong).order_by('opening_date')
for bm in bong_m :
    print(bm.director.name, bm.genre.title, bm.title, bm.opening_date, bm.running_time, bm.screening)
```

### 15. `봉준호` 감독 영화 중 두 번째로 개봉한 영화를 조회해서 출력하는 코드를 작성하세요.

> 예시 출력
> 

```
봉준호 SF 설국열차 2013-10-30 125 False
```

> 코드 작성
> 

```python
bong = Director.objects.get(name='봉준호')
bong_m = Movie.objects.filter(director=bong).order_by('opening_date')[1]
print(bm.director.name, bm.genre.title, bm.title, bm.opening_date, bm.running_time, bm.screening)
```

### 16. 영화의 상영 시간 `running_time` 이 119 보다 큰 영화들을 상영 시간순으로 조회해서 출력하는 코드를 작성하세요.

> 예시 출력
> 

```
봉준호 SF 설국열차 2013-10-30 125 False
이정재 첩보 헌트 2022-08-10 125 True
김한민 사극 한산 2022-07-27 129 True
Joseph Kosinski 액션 탑건 : 매버릭 2022-06-22 130 True
봉준호 드라마 기생충 2019-05-30 132 False
한재림 재난 비상선언 2022-08-03 140 True
최동훈 SF 외계+인 2022-07-20 142 False
```

> 코드 작성
> 

```python
run_119 = Movie.objects.filter(running_time__gt=119).order_by('running_time')
for r in run_119 :
    print(r.director.name, r.genre.title, r.title, r.opening_date, r.running_time, r.screening)
```

### 17. 영화의 상영 시간 `running_time` 이 119 이상인  영화들을 상영 시간순으로 조회해서 출력하는 코드를 작성하세요.

> 예시 출력
> 

```
봉준호 드라마 괴물 2006-07-27 119 False
봉준호 SF 설국열차 2013-10-30 125 False
이정재 첩보 헌트 2022-08-10 125 True
김한민 사극 한산 2022-07-27 129 True
Joseph Kosinski 액션 탑건 : 매버릭 2022-06-22 130 True
봉준호 드라마 기생충 2019-05-30 132 False
한재림 재난 비상선언 2022-08-03 140 True
최동훈 SF 외계+인 2022-07-20 142 False
```

> 코드 작성
> 

```python
run_119_over = Movie.objects.filter(running_time__gte=119).order_by('running_time')
for r in run_119_over :
    print(r.director.name, r.genre.title, r.title, r.opening_date, r.running_time, r.screening)
```

### 18. `2022-01-01` 이후로 개봉한 영화를 개봉일 순으로 조회해서 출력하는 코드를 작성하세요.

> 예시 출력
> 

```
Joseph Kosinski 액션 탑건 : 매버릭 2022-06-22 130 True
최동훈 SF 외계+인 2022-07-20 142 False
김한민 사극 한산 2022-07-27 129 True
한재림 재난 비상선언 2022-08-03 140 True
이정재 첩보 헌트 2022-08-10 125 True
```

> 코드 작성
> 

```python
date_220101 = Movie.objects.filter(opening_date__gte='2022-01-01').order_by('opening_date')
for d in date_220101 :
    print(d.director.name, d.genre.title, d.title, d.opening_date, d.running_time, d.screening)
```

### 19. 봉준호 감독 영화 중 장르가 드라마인 영화들을 개봉일 순으로 조회해서 출력하는 코드를 작성하세요.

> 힌트 :`Movie.objects.filter(조건1, 조건2,...)` 이 코드는 `WHERE 조건1 AND 조건2` 와 동일합니다.
> 

> 예시 출력
> 

```
봉준호 드라마 괴물 2006-07-27 119 False
봉준호 드라마 기생충 2019-05-30 132 False
```

> 코드 작성
> 

```python
bong = Director.objects.get(name='봉준호')
drama = Genre.objects.get(title='드라마')
bong_drama = Movie.objects.filter(director=bong, genre=drama).order_by('opening_date')

for bd in bong_drama :
    print(bd.director.name, bd.genre.title, bd.title, bd.opening_date, bd.running_time, bd.screening)
```

### 20. 봉준호 감독의 영화가 아닌 영화들을 개봉일 순으로 조회해서 출력하는 코드를 작성하세요.

> 힌트 : `filter` 와 반대되는 메소드로 `exclude` 가 있습니다.
> 

> 참고 사이트
> 

[[Django] QuerySet 메소드 정리 (2) - CRUD](https://devvvyang.tistory.com/37)

> 예시 출력
> 

```
이경규 액션 복수혈전 1992-10-10 88 False
Joseph Kosinski 액션 탑건 : 매버릭 2022-06-22 130 True
최동훈 SF 외계+인 2022-07-20 142 False
김한민 사극 한산 2022-07-27 129 True
한재림 재난 비상선언 2022-08-03 140 True
이정재 첩보 헌트 2022-08-10 125 True
```

> 코드 작성
> 

```python
bong = Director.objects.get(name='봉준호')
no_bong = Movie.objects.exclude(director=bong).order_by('opening_date')
for nb in no_bong :
    print(nb.director.name, nb.genre.title, nb.title, nb.opening_date, nb.running_time, nb.screening)
```