# 📱 Web

## 웹 사이트의 구성 요소

1. HTML -> 구조
2. CSS -> 표현
3. Javascript -> 동작

## 개발 환경 설정

1. VS Code

## HTML
> Hyper Text Markup Language
>

- Hyper Text
    - 참조를 통해 사용자가 한 문서에서 다른 문서로 즉시 접근할 수 있는 텍스트

### HTML 기본 구조

- html : 문서의 최상위 요소
- head : 문서 제목, 인코딩, 스타일, 외부 파일 로딩 등 일반적으로 브라우저에 나타나지 않는 내용
- body : 문서 본문 요소, 실제 화면 구성과 관련된 내용

```html
<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <title>Document</title>
</head>
<body>

</body>
</html>
```

### head 예시
- `<title>` : 브라우저 상단 타이틀
- `<meta>` : 문서 레벨 메타데이터 요소
- `<link>` : 외부 리소스 연결 요소
- `<script>` : 스크립트 요소
- `<style>` : CSS 직접 작성

### HTML 기초

#### HTML 요소
> HTML요소는 시작 태그와 종료 태그, 태그 사이에 위치한 내용으로 구성
>
```html
<h1>contents</h1>
시작태그    종료태그
```
- 내용이 없는 태그 (닫는 태그가 없음)
    - `<br>` : 띄어쓰기
    - `<hr>` : 수평선
    - `<img>` : 이미지
    - `<input>`
    - `<link>`
    - `<meta>`

#### HTML 속성
```html
<a href='https://google.com'></a>
   속성명       속성값
```

### DOM 트리
> 텍스트 파일인 HTML문서를 브라우저에서 렌더링하기 위한 구조
>
![돔트리](https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/DOM-model.svg/800px-DOM-model.svg.png)

### HTML 예제
```html
<!DOCTYPE html>
<html lang='en'>
    <head>
        <title>HTML 기초</title>
</head>
<body>
    <!-- a태그(anchor) -->
    <a href='https://google.com'>구글</a>
    <!-- b태그(bold) -->
    <b>굵은 글씨</b>
    <strong>강한 글씨?</strong>
    <!-- i태그(italic) -->
    <i>기울임</i> <br>
    <!-- 띄어쓰기 -->
    <br>
    <em>강한 글씨?</em>
    <!-- img -->
    <img scr='https://w.namu.la/s/b3d6f67b0a94e19b2ea20fd853bddbe13c294107acef8deff91d1b91ff99398ac488f17fcb0f4e3a8a3c75766034912f1367d291e6143f388cc81e9c724a0743768c263495dd2122db5023c5a560ab14dbcb0664b2349f2b703f95060f1aab53' 
    alt= 보노보노>
    <span></span>
    <!-- heading -->
    <h1>H1</h1>
    <h4>H4</h4>
    <!-- 문단 -->
    <p>문단 문단</p>
    <!-- ol, ul -->
    <ol>
        <li>순서가 있음</li>
        <li>순서가 있음</li>
    </ol>
    <ul>
        <li>순서가 없음</li>
    </ul>
    <pre>
        기본 기본
    </pre>
    <p>
        기본 기본 기본<br>우아아
    </p>
    <blockquote>
        인용문?
    </blockquote>
    <div>
        ???
    </div>
</body>
</html>
```

### CSS 기초 선택자
1. 요소 선택자 : HTML 태그를 직접 선택
2. 클래스 선택자 : 마침표 `.`문자로 시작, 해당 클래스가 적용된 항목을 선택
3. 아이디 선택자 : `#` 문자로 시작, 해당 아이디가 적용된 항목을 선택
    - 일반적으로 하나의 문서에 **한 번만** 사용
    - 여러 번 사용해도 동작은 하지만 단일 아이디 사용 권장
    - 자바스크립트(JS)로 개발할 때 활용

```html
<!DOCTYPE html>
<html>
    <head>
        <title>제목</title>
        <style>
            h1 {
                color : blue
                font-size :15px;
            }
        </style>
    </head>
<body>
    <h1>H1</h1>
</body>
</html>
```
