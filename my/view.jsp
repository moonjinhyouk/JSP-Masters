<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>게시글 보기 | TourList</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/view.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top shadow">
  <div class="container-fluid">
    <a class="navbar-brand fw-bold" href="New.jsp">🌍 TourList</a>
  </div>
</nav>

<div class="container" style="margin-top: 90px; max-width: 720px;">
    <div class="card shadow-sm mb-4">
        <div class="card-header bg-primary text-white">
            <h1 class="mb-0">${post.title}</h1>
        </div>
        <div class="card-body">
            <h3>${post.title}</h3>
            <p>${post.description}</p>
            <c:if test="${not empty post.imageUrl}">
                <img src="${post.imageUrl}" alt="${post.title}" class="img-fluid rounded mb-3">
            </c:if>
            <a href="New.jsp" class="btn btn-link">&larr; 목록으로 돌아가기</a>
        </div>
    </div>

    <div class="card shadow-sm mb-5">
        <div class="card-header">
            <h4>댓글 (${fn:length(comments)})</h4>
        </div>
        <div class="card-body">
            <c:if test="${not empty comments}">
                <c:forEach var="comment" items="${comments}">
                    <div class="mb-3 border-bottom pb-2">
                        <strong>${comment.author}</strong> <small class="text-muted">${comment.createdAt}</small>
                        <p>${comment.content}</p>
                    </div>
                </c:forEach>
            </c:if>
            <c:if test="${empty comments}">
                <p class="text-muted">댓글이 없습니다.</p>
            </c:if>

            <!-- 댓글 작성 폼 -->
            <form action="addComment.jsp" method="post" class="mt-4">
                <input type="hidden" name="postId" value="${post.id}">
                <div class="mb-3">
                    <label for="author" class="form-label">작성자</label>
                    <input type="text" id="author" name="author" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="content" class="form-label">댓글 내용</label>
                    <textarea id="content" name="content" rows="3" class="form-control" required></textarea>
                </div>
                <button type="submit" class="btn btn-success">댓글 달기</button>
            </form>
        </div>
    </div>
</div>

<footer class="bg-light text-center text-muted py-3 mt-5 border-top">
    ⓒ 2025 TourBoard. All rights reserved.
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
