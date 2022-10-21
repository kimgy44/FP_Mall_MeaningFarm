<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    
    <title>공지사항 페이지</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/footers/"/>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/dashboard/"/>
    <link href="../resources/assets/dist/css/bootstrap.min.css" rel="stylesheet" />

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, 0.1);
        border: solid rgba(0, 0, 0, 0.15);
        border-width: 1px 0;
        box-shadow: inset 0 0.5em 1.5em rgba(0, 0, 0, 0.1),
          inset 0 0.125em 0.5em rgba(0, 0, 0, 0.15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -0.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
    </style>

    <!-- Custom styles for this template -->
    <link href="dashboard.css" rel="stylesheet" />
  </head>

  <body>
    <!---------------------- 헤더시작 -------------------->
  	<%@include file="../include/header.jsp" %>
    <!---------------------- 헤더끝-------------------- -->

    <div class="container">
      <div class="row">
      
        <!-- 사이드바 시작 -->
     		<%@include file="../include/side.jsp" %>
        <!-- 사이드바 끝 -->

        <!-- 공지사항 내용 들어갈 부분입니다. -->
        <main class="col-md-8 ms-sm-auto col-lg-10 px-md-4">
          <h2>공지사항</h2>
          <br />
          <div class="row">
            <!-- 검색창 검색어버튼 시작 -->
            <div class="col-lg-6 col-sm-12 text-lg-start text-center">
              <form action="#" method="GET">
                <div class="mx-quto input-group mt-auto">
                  <mx-auto>
                    <input id="search" name="search" type="text" class="form-control" 
                    placeholder="검색어를 입력해주세요" aria-label="search" aria-describedby="button-addon2"/>
                  </mx-auto>
                  
                  <button class="btn btn-success" type="submit" id="searchBtn">검색</button>
                  
                </div>
              </form>
            </div>
            <!-- 검색창 검색어버튼 끝 -->
            
            <!--------------------- 글작성 버튼 --------------------->
            <div class="col-lg-6 col-sm-12 text-lg-end text-center">
              <button id="regBtn" type="button" class="btn btn-outline-secondary">글작성</button>
            </div>
            <!------------------------- 글작성 버튼 끝--------------->
          </div>
          
          <!------------------- 목록 시작 ---------------------------->
          <div class="table-responsive">
            <table class="table table-striped table-sm">
              <thead>
                <tr>
                  <th scope="col">번호</th>
                  <th scope="col">제목</th>
                  <th scope="col">작성자</th>
                  <th scope="col">작성일</th>
                  <th scope="col">첨부파일</th>
                  <th scope="col">조회수</th>
                </tr>
              </thead>
				<!-- 반복문 -->             
				<%-- <td><a href="/board/read?bno=${list.bno}">${list.title}</a></td> --%>
		<%-- 	<c:forEach items="${list}" var="list"> --%>
			<tr>
			<%-- 	<td>${list.NOTICE_NO}</td>
				<td>${list.NOTICE_TITLE}</td>
				<td>${list.ADMIN_NAME}</td>
				<td>${list.NOTICE_REGDATE}</td>
				<td>${list.NOTICE_YN}</td>
				<td>${list.NOTICE_HIT}</td> --%>
				
				<td><c:out value="${list.NOTICE_NO}"/></td>
				<td><c:out value="${list.NOTICE_TITLE}"/></td>
				<td><c:out value="${list.ADMIN_NAME}"/></td>
				<td><c:out value="${list.NOTICE_REGDATE}"/></td>
				<td><c:out value="${list.NOTICE_YN}"/></td>
				<td><c:out value="${list.NOTICE_HIT}"/></td>
			</tr>
	<%-- 		</c:forEach> --%>
			<!-- 목록 끝 -->
             
            </table>
          </div>
        </main>
        <!-- 공지사항 메인 끝 -->
        
	<!------------------페이지네이션  -------------------->
        <!-- 페이지네이션 시작 -->
        <nav aria-label="Page navigation example">
          <ul class="pagination justify-content-center">
            <li class="page-item disabled">
              <a class="page-link">Previous</a>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">4</a></li>
            <li class="page-item"><a class="page-link" href="#">5</a></li>
            <li class="page-item"><a class="page-link" href="#">6</a></li>
            <li class="page-item"><a class="page-link" href="#">7</a></li>
            <li class="page-item"><a class="page-link" href="#">8</a></li>
            <li class="page-item"><a class="page-link" href="#">9</a></li>
            <li class="page-item"><a class="page-link" href="#">10</a></li>
            <li class="page-item">
              <a class="page-link" href="#">Next</a>
            </li>
          </ul>
        </nav>
       <!------------------페이지네이션  끝-------------------->
        
      </div>
    </div>





<!--글쓰기 버튼을 눌렀을떄 글쓰기페이지로 이동하기  -->	
<script type="text/javascript">
    document.getElementById("regBtn").onclick = function () {
    	console.log("list로 이동");
        location.href = 'register';
    };
</script>



<!-- 스크립트 모음 -->
    <script src="../resource/assets/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
      integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
      crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"
      integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha"
      crossorigin="anonymous">
    </script>
    <script src="dashboard.js"></script>
    
    
  </body>
</html>
