<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>swap people 상대리스트</title>
  <link rel="stylesheet" href="${rootPath}/team.css" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet" />
  <style>
    header a {

      text-decoration: none;
    }

    header h1 {
      font-size: 3rem;
      color: white;
    }


    section {
      min-width: 1200px;
      width: 70%;
      align-items: center;
      justify-content: center;
      margin: 100px auto;
      flex: 1;
      padding: 5px;
      display: flex;
      flex-direction: column;
    }


    section div,
    article div {
      display: flex;
      flex-direction: column;
      justify-content: space-evenly;
    }

    button {
      background-color: green;
      color: white;
      width: 70px;
      height: 40px;
      align-self: center;
    }

    .hm2 {
      display: flex;
      flex-direction: row;
      flex: 1;
      align-content: center;
      width: 70%;
    }

    .hm2 p i {
      font-weight: 900;
    }

    .hm22 {
      display: flex;
      flex-direction: column;
      margin: 20px 70px;
    }

    .hm23 {
      display: inline-block;
      font-size: 20px;
      margin-top: 10px;
      text-align: center;
      width: 100px;
      height: 70px;
      padding: 10px;
      color: white;
      background-color: #ccc;
      cursor: pointer;
    }

    .hm23:hover {
      background-color: salmon;
    }

    .he2 {
      display: flex;
      flex: 1;
      font-weight: 900;
    }

    /* .he2 p {
        border: 1px solid black;
        height: 5vh;
        font-size: 1.2rem;
        align-items: center;
      } */
    .he {
      flex: 1;
      margin-right: 20px;
    }

    .hm {
      flex: 1;
    }

    .profil {
      width: 15vw;
      height: 30vh;
      border-radius: 90px;
    }

    hr {
      display: flex;
      border: 1px solid rgb(41, 172, 253);
      width: 60%;
      margin: 3% auto;
      min-width: 1200px;
    }

    article {
      text-align: center;
      padding: 0 5%;
      min-width: 1200px;
    }

    article img {
      width: 15vw;
      overflow: hidden;
    }

    article p {
      margin: 3% 0;
      font-size: 2rem;
    }

    article i {
      font-size: 3rem;
      display: flex;
      vertical-align: 60px;
    }

    footer div,
    article div {
      border: 1px solid black;
    }

    table {
      margin: 10px 20px;
      display: inline-block;
    }

    table td {
      padding: 30px 20px 10px 20px;
      border-bottom: 1px solid rgb(147, 223, 34);
      font-style: oblique;
    }

    table th {
      font-style: oblique;
      font-size: 1.2rem;
    }

    .inp1 {
      width: 50vw;
      height: 7vh;
      font-size: 1rem;
    }

    footer {
      display: flex;
      flex-direction: row;
      justify-content: space-evenly;
      min-width: 1200px;
    }

    footer div {
      border: none;
    }

    footer div input {
      height: 5vh;
      font-size: 1.5rem;
      background-color: #00d0ff;
      color: white;
    }

    article div {
      width: 59vw;
      height: 20vh;
      flex-direction: row;
      margin: auto;
    }

    #bong {
      display: flex;
      flex-direction: row;
      width: 150px;
    }

    #bong div {
      margin-left: 10px;
      font-size: 30px;
    }

    #rating {
      margin-top: 20px;
      display: flex;
      cursor: pointer;
      flex-direction: row;
      width: 500px;
      font-size: 20px;
    }

    .stars {
      display: flex;
      flex-direction: row;
      margin-right: 20px;
      font-size: 30px;
    }

    .d1 h1:not(:nth-of-type(1)) {
      color: white;
      text-decoration: none;
    }

    .list a {
      color: white;
      margin: auto;
    }

    .rating-number {
      font-size: 30px;
      font-weight: 500;
      margin-right: 0.5rem;
      margin-left: 5px;
      padding-left: 0;
      box-sizing: border-box;
      display: flex;

    }

    .night {
      font-size: 20px;
    }
  </style>
  <link rel="stylesheet" href="${rootPath}/static/css/team.css" />
</head>
<script src="https://kit.fontawesome.com/bd2bbc2e2d.js" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/bd2bbc2e2d.js" crossorigin="anonymous"></script>

<body>
  <header>
    <div class="d3">
      <h1>니꺼<br />내꺼</h1>
    </div>
    <div class="d1">
      <a href="">
        <h1>내꺼니꺼</h1>
      </a>
    </div>
    <div class="d2">
      <i class="fa-solid fa-people-roof fa-3x" style="color: white"></i>
      <i class="fa-regular fa-bell fa-3x" style="color: white"></i>
      <div id="mypage">
        <i class="fa-solid fa-circle-user fa-3x" style="color:white"></i>
        <div class="nav_box">
          <nav id="nav_menu">
            <ul class="list">
              <a href="">
                <li>마이페이지</li>
              </a>
              <li>회원정보</li>
              <li>로그아웃</li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </header>
  <section>
    <div class="hm2">
      <div class="he">
        <img src="../images/rabit.jpg" class="profil" />
      </div>

      <div class="he2">
        <div id="bong">
          <div>봉봉님</div>
        </div>
        <div id="rating">
          <div class="stars">
            <a onclick='window.open("../my page/review2.html", "review", "width= 500px, height=520px")'>
              <i class="fa-solid fa-star fa-1x"></i>
              <i class="fa-solid fa-star fa-1x"></i>
              <i class="fa-solid fa-star fa-1x"></i>
              <i class="fa-solid fa-star fa-1x"></i>
              <i class="fa-solid fa-star fa-1x"></i>
          </a>
          </div>
          <p class="rating-number">4.8(총 10번 거래)</p>
        </div>
        <div class="night">
          <i class="fa-regular fa-handshake">
            &nbsp;거래방식 : 대면 12(회)/ 비대면 1(회)</i>
          <p>거래주소(위치/장소) : ${posting.addr}</p>
       		<a href="${rootPath }/posting/map3">지도보기</a>
        </div>
      </div>

      <div class="hm22">
        <div class="hm23">
          <i class="fa-regular fa-heart"></i>
          <div>찜하기</div>
        </div>
        <div class="hm23">
          <i class="fa-regular fa-thumbs-up"></i>
          <div>추천 45</div>
        </div>
      </div>
    </div>

    <hr />
    <article>
      <p>내꺼니꺼 등록 물품</p>
      <div>
        <img src="../images/camera.jpg" />
        <img src="../images/ball.jpeg" />
        <img src="../images/iphone.jpg" />
        <img src="../images/macbook.jpg" />
        <img src="../images/cello.jpg" />
        <img src="../images/cloth.jpeg" />
        <img src="../images/ex1.jpeg" />
      </div>
    </article>
    <hr />
    <article>
      <p>받고싶은 물품</p>
      <p>
        <input class="inp1" type="text" readonly="readonly"/>${posting.goods}
      </p>
    </article>
  </section>
</body>

</html>