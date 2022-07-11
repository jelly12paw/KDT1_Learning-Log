# 💡Git 01

## Git code

#### 1. pwd

```bash
$ pwd : 현재 디렉토리 출력

$ pwd
/c/Users/사용자 이름/Desktop/TIL
```

#### 2. cd

```bash
$ cd : 가장 상위 디렉토리로 이동
$ cd .. : 바로 위인 상위 디렉토리로 이동

$ cd
$ pwd
/c/Users/사용자 이름

$ cd ..
$ pwd
/c/Users/사용자 이름/Desktop
```

#### 3. ls

```bash
$ ls : 현재 디렉토리가 가지고 있는 목록 출력

$ ls
Git/  마크다운/
```

#### 4. mkdir

```bash
$ mkdir 디렉토리명 : 디렉토리(폴더) 생성
$ mkdir 이름.확장자명 : 확장자 파일 생성

$ mkdir hello
$ ls
Git/  hello/  마크다운/

$ mkdir goodmorning.txt
Git/  goodmorning.txt/  hello/  마크다운/
```

#### 5. touch

```bash
$ touch 파일명 : 빈 파일 생성
$ touch 파일명.확장자명 : 확장자 파일 생성

$ touch bye
$ ls
bye  Git/  goodmorning.txt/  hello/  마크다운/

$ touch a.txt
$ ls
a.txt  bye  Git/  goodmorning.txt/  hello/  마크다운/
```

#### 6. rm

```bash
$ rm 파일명 : 파일 삭제 (폴더 삭제 불가)
$ rm -r 폴더명 : 폴더 삭제

$ rm bye
$ ls
a.txt  Git/  goodmorning.txt/  hello/  마크다운/

$ rm hello
rm: cannot remove 'hello': Is a directory

$ rm -r hello
$ ls
a.txt  Git/  goodmorning.txt/  마크다운/
```

#### 7. git log

```bash
$ git log : 커밋한 결과 출력
$ git log -1 : 최근 커밋한 결과 출력
$ git log --oneline : 커밋한 결과를 요약하여 출력

$ git log
commit 508e3f8a47e688f00c7fe4c04420e3b36430fcb5 (HEAD -> master)
Author: 사용자 이름 <사용자 이메일>
Date:   Sun Jul 10 01:36:29 2022 +0900

    마크다운 정리

commit c36aab8063f4e5834449e4f283eb5dfb7982af91
Author: 사용자 이름 <사용자 이메일>
Date:   Fri Jul 8 16:46:37 2022 +0900

    마크다운 정리본

$ git log -1
commit 508e3f8a47e688f00c7fe4c04420e3b36430fcb5 (HEAD -> master)
Author: 사용자 이름 <사용자 이메일>
Date:   Sun Jul 10 01:36:29 2022 +0900

    마크다운 정리
    
$ git log --oneline
508e3f8 (HEAD -> master) 마크다운 정리
c36aab8 마크다운 정리본
```




# GIT 실습



## 0. 사전 설정 (PC 최초 한 번만)

```bash
$ git config --global user.name '사용자 이름'
$ git config --global user.email '사용자 이메일'

# 사용자 확인
$ git config --global --list 
```



## 1. TIL 폴더를 만든 후 git 저장소 만들기

```bash
$ git init
Initialized empty Git repository in C:/Users/사용자 이름/Desktop/TIL/.git/

(master) $
```



## 2. 커밋 만들기

```bash
$ git status

On branch master
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)        
  (use "git restore <file>..." to discard changes in working directory)
        deleted:    "\353\247\210\355\201\254\353\213\244\354\232\264/\353\247\210\355\201\254\353\213\244\354\232\264_\355\212\234\355\206\240\353\246\254\354\226\274.md"

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        "\353\247\210\355\201\254\353\213\244\354\232\264/\353\247\210\355\201\254\353\213\244\354\232\264_practice.md"
        "\353\247\210\355\201\254\353\213\244\354\232\264/\360\237\222\241\353\247\210\355\201\254\353\213\244\354\232\264 \354\202\254\354\232\251\353\262\225.md"
        
no changes added to commit (use "git add" and/or "git commit -a")
```

```bash
$ git add .
$ git commit -m '마크다운 정리'

[master 508e3f8] 마크다운 정리
 3 files changed, 255 insertions(+), 134 deletions(-)
 create mode 100644 "\353\247\210\355\201\254\353\213\244\354\232\264/\353\247\210\355\201\254\353\213\244\354\232\264_practice.md"
 delete mode 100644 "\353\247\210\355\201\254\353\213\244\354\232\264/\353\247\210\355\201\254\353\213\244\354\232\264_\355\212\234\355\206\240\353\246\254\354\226\274.md"
 create mode 100644 "\353\247\210\355\201\254\353\213\244\354\232\264/\360\237\222\241\353\247\210\355\201\254\353\213\244\354\232\264 \354\202\254\354\232\251\353\262\225.md"
```

```bash
$ git log
commit 508e3f8a47e688f00c7fe4c04420e3b36430fcb5 (HEAD -> master)
Author: 사용자 이름 <사용자 이메일>
Date:   Sun Jul 10 01:36:29 2022 +0900

    마크다운 정리
```

```bash
$ git status
On branch master
nothing to commit, working tree clean
```
