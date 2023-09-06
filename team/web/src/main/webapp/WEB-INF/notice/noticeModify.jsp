<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctxPath" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>공지사항 수정</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    </head>
<body>
<div>noticeModify.jsp</div>
		<jsp:include page="../includes/headerNav.jsp" />

<div class="main">
        <div class="container">
          <form action="${ctxPath}/noticeUpdate.do" method="get" class="mb-5">
          <input type="hidden" id="article_No" name="article_No" value ="${shop_Write_AdminBoardDTO.article_No}">
            <div class="w-75 m-auto mt-5">
              <h4 class="p-2" style="font-weight: 600;">공지사항</h4>
            </div>
            <div class="w-75 m-auto">
              <div class="mb-3 row">
            	<hr style="border: solid 2px black;">
                <label for="selectBoard" class="col-sm-2 col-form-label"
                  >게시판</label
                >
                <div class="col-sm-10">
                  <select
                    class="form-select rounded-1"
                    aria-label="Default select example"
                  >
                    <option selected>게시판을 선택해주세요.</option>
                    <option value="1" selected>공지사항</option>
                  </select>
                </div>
              </div>
              <div class="mb-3 row">
                <label for="title" class="col-sm-2 col-form-label">제목</label>
                <div class="col-sm-10">
                  <input
                    type="text"
                    name="title"
                    class="form-control border rounded-1 p-2"
                    id="title"
                    placeholder="제목을 입력해주세요."
                    value="${shop_Write_AdminBoardDTO.title}"
                  />
                </div>
              </div>
              <div class="mb-3 row">
                <label for="content" class="col-sm-2 col-form-label"
                  >내용</label
                >
                <div class="col-sm-10">
                  <textarea
                    name="content"
                    class="form-control border rounded-1 p-2"
                    id="content"
                    rows="20"
                    maxlength="4000"
                    placeholder="내용을 입력하세요."
                    style="resize: none"
                  >
${shop_Write_AdminBoardDTO.content }</textarea
                  >
                </div>
              </div>
              <div class="mb-5 row">
                <label for="imageFileName" class="col-sm-2 col-form-label"
                  >첨부파일</label
                >
                <div class="col-sm-10">
                  <input
                    type="file"
                    class="form-control p-2"
                    name="imageFileName"
                    id="imageFileName"
                    onchange="readURL(this)"
                  />
                </div>
              </div>
            </div>

            <div class="m-auto d-flex justify-content-center mb-5">
              <div class="w-75 d-flex justify-content-end">
                <div>
                  <button
                    type="submit"
                    class="btn btn-outline-secondary"
                  >
                    완료
                  </button>
                  
                  </form>
                  <button
                    type="button"
                    class="btn btn-danger"
                    onclick="noticeList()"
                  >
                    목록
                  </button>
                </div>
              </div>
            </div>
        </div>
      </div>
      
      <jsp:include page="../includes/footer.jsp" />
      
        <script type="text/javascript">
	        function productList(){
	       		location.href="${ctxPath}/productList.do"
	       	}
        	function noticeList(){
        		location.href="${ctxPath}/noticeList.do"
        	}
        	function productSerchList(){
            	$('#searchForm').submit();
        	}
        	
        </script>
        
   
</body>