# 💡Git 02



## Git code



#### 1. git remote add origin (URL)

>git init이 된 디렉토리에서 사용할 수 있다. : (master) 표시 확인
>
>디렉토리 안에는 파일이 존재해야 한다.

```bash
$ git remote add origin https://github.com/jelly12paw/test.git
```



#### 2. git push origin master

>해당 디렉토리를 원격저장소에 업로드
>
>확인 메시지 클릭 > git ID와 PW 입력

```bash
$ git push origin master

info: please complete authentication in your browser...
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 4 threads
Compressing objects: 100% (9/9), done.
Writing objects: 100% (11/11), 1.00 KiB | 93.00 KiB/s, done.
Total 11 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), done.
To https://github.com/jelly12paw/test.git
 * [new branch]      master -> master
```

