# 💡Git 03


## Git install package


#### 1. pip install (package name)
> 패키지 설치하기

```bash
$ pip install requests
Collecting requests
  Using cached requests-2.28.1-py3-none-any.whl (62 kB)
Requirement already satisfied: charset-normalizer<3,>=2 in c:\users\Username\appdata\local\programs\python\python39\lib\site-packages (from requests) (2.1.0)
Requirement already satisfied: certifi>=2017.4.17 in c:\users\Username\appdata\local\programs\python\python39\lib\site-packages (from requests) (2022.6.15)
Requirement already satisfied: urllib3<1.27,>=1.21.1 in c:\users\Username\appdata\local\programs\python\python39\lib\site-packages (from requests) (1.26.10)
Requirement already satisfied: idna<4,>=2.5 in c:\users\Username\appdata\local\programs\python\python39\lib\site-packages (from requests) (3.3)
Installing collected packages: requests
Successfully installed requests-2.28.1
WARNING: You are using pip version 22.0.4; however, version 22.1.2 is available.
You should consider upgrading via the 'C:\Users\Username\AppData\Local\Programs\Python\Python39\python.exe -m pip install --upgrade pip' command.
```


#### 2. pip uninstall (package name)
> 패키지 삭제하기

```bash
$ pip uninstall requests
Found existing installation: requests 2.28.1
Uninstalling requests-2.28.1:
  Would remove:
    c:\users\Username\appdata\local\programs\python\python39\lib\site-packages\requests-2.28.1.dist-info\*
    c:\users\Username\appdata\local\programs\python\python39\lib\site-packages\requests\*
Proceed (Y/n)? Y
  Successfully uninstalled requests-2.28.1
```


#### 3. pip list
> 내 컴퓨터에 설치된 패키지를 보여준다.
> 패키지를 설치한 후 설치가 됐는지 확인할 수 있다.

```bash
$ pip list
Package            Version
------------------ ---------
certifi            2022.6.15
charset-normalizer 2.1.0
idna               3.3
pip                22.0.4
requests           2.28.1 --<requests 설치!>--
setuptools         58.1.0
urllib3            1.26.10
WARNING: You are using pip version 22.0.4; however, version 22.1.2 is available.
You should consider upgrading via the 'C:\Users\Username\AppData\Local\Programs\Python\Python39\python.exe -m pip install --upgrade pip' command.
```


#### 4. which (package name)
> 내 컴퓨터 안 어디에 패키지가 설치되어 있는지 경로를 보여준다.

```bash
$ which python
/c/Users/Username/AppData/Local/Programs/Python/Python39/python
```


## 가상 환경 만들기
> 가상 환경을 사용하는 이유는 컴퓨터마다 설치되어 있는 패키지 버전이 다를 수 있기 때문이다.
> 패키지 버전이 다른 경우 프로젝트 별로 해당 패키지를 독립적으로 관리할 수 있다.


#### 1. python -m venv venv
> 가상 환경 생성 명령어

```bash
$ python -m venv venv
```


#### 2. python venv/Scripts/activate
> 가상 환경을 실행시키는 명령어

```bash
$ python venv/Scripts/activate
(venv)
```

#### 2-1. 오류 발생 시 해결 방법
> `python venv/Scripts/activate` 코드를 실행했을 때 `SyntaxError` 발생
> `python`을 `source`로 변경해서 실행한다. 

```bash
$ python venv/Scripts/activate
  File "C:\Users\Username\Desktop\신규프로젝트\venv\Scripts\activate", line 4
    deactivate () {        
                  ^        
SyntaxError: invalid syntax
```

```bash
$ source venv/Scripts/activate
(venv) 
```

#### 3. pip list
> 가상 환경이 실행되었는지 확인한다.
> 맨 아래에 `(venv)` 표시가 있으면 가상 환경이 실행된 것이다.

```bash
$ pip list
Package    Version
---------- -------
asgiref    3.5.2
Django     4.0.6
pip        22.0.4
setuptools 58.1.0
sqlparse   0.4.2
tzdata     2022.1
WARNING: You are using pip version 22.0.4; however, version 22.1.2 is available.
You should consider upgrading via the 'C:\Users\Username\Desktop\신규프로젝트\venv\Scripts\python.exe -m pip install --upgrade pip' command.
(venv) 
```


#### 4. which python
> python 패키지가 내 컴퓨터 어디에서 실행되고 있는지 경로를 보여준다.

```bash
$ which python
/c/Users/Username/Desktop/신규프로젝트/\Users\Username\Desktop\신규프로젝트\venv/Scripts/python
(venv)
```


#### 5. pip freeze > requeirments.txt
> 현재 내 컴퓨터에 설치되어 있는 패키지들의 버전 정보를 txt로 만든다.
> 프로젝트를 진행하기 전 팀원들이 자신의 컴퓨터에 설치된 패키지 버전을 확인하는 용도이다.

```bash
$ pip freeze > requeirments.txt
(venv)
```

```
requeirments.txt

asgiref==3.5.2
Django==4.0.6
sqlparse==0.4.2
tzdata==2022.1
```
