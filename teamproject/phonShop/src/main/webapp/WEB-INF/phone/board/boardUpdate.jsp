<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>공지사항 입력</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/insert.css?ver=1"/>
<link href="${pageContext.request.contextPath}/css/baisc.css?after" type="text/css"/> 
<style>
	.wrapper{
		width: 100%;
		display: flex;	  	
	}

</style>
</head>
<body>
<div class="wrap">
        <header>
             <jsp:include page="/WEB-INF/phone/header.jsp" flush="true"/>		
        </header>
    
    <div class="wrapper">
        <article>
       
        <aside class="side">
         <jsp:include page="/WEB-INF/phone/board/boardaside.jsp" flush="true"/>
        </aside>
        </article>
        
     </div>
    <div class="container">
      <h2>공지사항 수정</h2>
      <form action="boardUpdate.do6" method="post">
      <div class="form-group">
          <input type="hidden" id="boardNumber" name="boardNumber" value="${board.getBoardNumber()}" placeholder="순서" required>
        </div>
      <select id="boardCategory" name="boardCategory" required>
        <option value="공지사항"<c:if test="${board.getBoardCategory() eq '공지사항'}">selected</c:if>>공지사항</option>
      </select>
        <div class="form-group">
          <input type="text" id="boardTitle" name="boardTitle" value="${board.getBoardTitle()}" placeholder="제목" required>
        </div>
        <div class="form-group">
          <label for="boardUser">작성자</label>
          <input type="text" id="boardUser" name="boardUser" value="${board.getBoardUser()} " readonly required>
        </div>
        <div class="form-group">
          <textarea id="boardContent" name="boardContent" placeholder="내용" required>${board.getBoardContent()}</textarea>
        </div>
        <div class="form-group">
            <input type="file" name="boardImage" value="${board.getBoardImage()}">
        </div>
        <div class="form-group">
            <label for="boardDate">작성일</label>
            <input type="date" id="boardDate" name="boardDate" readonly value="${board.getBoardDate()}" readonly>
          </div>
        <div class="form-group">
          <input type="submit" name="boardInput" value="수정" onclick = "location.href= 'boardUpdate.do6'">
          <input type="button" name="boardExit" value="취소"  onclick = "location.href= 'getBorder.do3'">
        </div>
        </form>
        </div>
	<footer>
		<jsp:include page="/WEB-INF/phone/footer.jsp" flush="true"/>
	</footer>
	</div>
</body>
</html>