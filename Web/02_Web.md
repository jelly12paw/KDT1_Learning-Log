# 📱 Web

## CSS 기본 스타일

### px / % / em / rem
> `px(픽셀)` : 모니터 해상도의 한 화소인 픽셀 기준, 고정적인 단위
>
> `%` : 백분율 단위, 가변적 레이아웃에서 자주 사용
>
> `em` : 바로 위 부모 요소에 대한 상속의 영향을 받음. 
> 배수 단위, 요소에 지정된 사이즈에 상대적인 사이즈를 가짐
>
> `rem` : 바로 위 부모 요소에 대한 상속의 영향을 받지 않음. 
> 최상위 요소의 사이즈를 기준으로 배수 단위를 가짐

```html
<style>
  .box{
    height : 50px
    width : 50px
    background-color : bisque;
  }
  
  .box2{
    height : 50px
    width : 50%
    background-color : red;
  }

  .em {
    font-size : 2em;
  }

  .rem {
    font-size : 2rem;
  }
</style>
```
```html
<body>
  <!-- px -->
  <div class='box'></div>

  <!-- % -->
  <div class='box2'></div>

  <h2 class='em'>2em</h2>
  <ul class='em'>
    <li class='em'>_</li>
  </ul>

  <h2 class='rem'>2em</h2>
  <ul class='rem'>
    <li class='rem'>_</li>
  </ul>

</body>
```

### viewport
> 디바이스의 viewport를 기준으로 상대적인 사이즈를 결정
>
> `vv`, `vh`, `vmin`, `vmax`
>

### 색상 단위
> 색상 키워드
>
> RGB 색상 : `# + 16진수` 혹은 `rgb()` 함수
>
> HSL 색상 : 색상, 채도, 명도
>
> a : alpha(투명도)
>
```html
p {color : black;}
p {color : #000;}
p {color : #000000;}
p {color : rgb(0, 0, 0);}
p {color : hsl(120, 100%, 0);}

p {color : rgba(0, 0, 0, 0.5);}
p {color : hsla(120, 100%, 0.5;}
```

### 선택자(Selector) 유형
- 기본 선택자
  - 전체 선택자, 요소 선택자
  - 클래스 선택자, 아이디 선택자, 속성 선택자

### 적용 우선순위
![우선순위](https://velog.velcdn.com/cloudflare/mooongs/e1359c7f-46ed-4494-a640-c1c538977d74/specificityimg.png)

### Box model
![box](https://s3.amazonaws.com/viking_education/web_development/web_app_eng/css_box_model_chrome.png)

```html
<style>
  .box{
    margin : 1rem;
    padding : 1rem
    background-color : bisque;
    border : 1px solid black;
  }
</style>
```

```html
<style>
  .box{
    width : 500px;
    border-width: 2px;
    border-color: black;
    border-style: dashed;
  padding-left : 50px;
  margin-bottom: 30px;
  }

  .box1 {
    width : 500px;
    border : 2px solid black;
    padding: 20px 30px;
  }
</style>
```

### CSS Display
> `block` : 줄 바꿈이 일어남
>
> `inline` : 줄 바꿈없이 한 줄에 표현
![디스플레이](https://velog.velcdn.com/images%2Feye3570%2Fpost%2F30c81418-fa58-48ce-b215-a7ffaabee86a%2Fimage.png)