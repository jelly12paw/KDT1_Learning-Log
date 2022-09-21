# 🚀 Django 01

## 가상환경 생성 및 장고 설치 후 서버 실행

### 가상환경 생성하기

> 가상환경을 생성할 폴더 `server` 만들기
>
```bash
$ mkdir server
```

> 생성한 폴더 `server`에서 파이썬 가상환경 `server-venv` 생성하기
>
```bash
$ python -m venv server-venv
```

> 가상환경이 생성되었는지 확인하기
>
```bash
$ ls
```
> `ls` 명령어를 실행시켰을 때 생성한 가상환경이 확인되면 잘 만들어진 것
>
```bash
server-venv/
```

> 생성한 가상환경을 실행하기
>
```bash
$ source server-venv/Scripts/activate
```
> 실행시킨 후 하단에 `(server-venv)` 표시가 뜨면 가상환경이 실행되고 있는 것
```bash
(server-venv)
```

> 가상환경 실행을 종료하기
>
```bash
deactivate
```

> 생성한 가상환경 삭제하기
>
```bash
$ rm -rf server-venv
```

### 가상환경에서 Django 설치하기

> 가상환경이 실행된 상태인지 `(server-venv)` 확인 후 가상환경에서 Django 설치하기
>
> 최신 버전이 아닌 `Django 3.2.13`으로 설치하기
>
```bash
$ pip install Django==3.2.13
```
```bash
Collecting django==3.2.13
  Using cached Django-3.2.13-py3-none-any.whl (7.9 MB)
Collecting sqlparse>=0.2.2
  Using cached sqlparse-0.4.2-py3-none-any.whl (42 kB)
Collecting pytz
  Using cached pytz-2022.2.1-py2.py3-none-any.whl (500 kB)
Collecting asgiref<4,>=3.3.2
  Using cached asgiref-3.5.2-py3-none-any.whl (22 kB)
Installing collected packages: pytz, sqlparse, asgiref, django
Successfully installed asgiref-3.5.2 django-3.2.13 pytz-2022.2.1 sqlparse-0.4.2
```
> 설치가 잘 되었는지 확인하기
>
```bash
$ pip list
```
```bash
Package    Version
---------- --------
asgiref    3.5.2
Django     3.2.13
pip        22.0.4
pytz       2022.2.1
setuptools 58.1.0
sqlparse   0.4.2
```

### 가상환경에서 Django를 이용해 서버 연결하기

> Django에서 서버 프로젝트 `firstpjt` 생성하기
>
```bash
$ django-admin startproject firstpjt .
```

> `firstpjt`가 잘 생성되었는지 확인하기
>
```bash
$ ls
```
```bash
firstpjt/  manage.py*  server-venv/
```

> VScode로 확인하기
>
```bash
$ code .
(server-venv)
```

> 파이썬 환경에서 `manage.py`를 실행하여 서버에 연결하기
>
```bash
$ python manage.py runserver
```

> 실행이 되고 있으면 아래와 같은 문구가 표시
```bash
Watching for file changes with StatReloader
```

> 인터넷 브라우저 주소창에 `localhost:8000` 입력하고 실행하기
>
> 아래와 같은 화면이 나오면 서버가 잘 실행되고 있는 것
>
![django](https://wikidocs.net/images/page/72377/O_1-04_1.png)

> 서버 연결 해제하기
>
> `Ctrl + C`키를 누르면 종료