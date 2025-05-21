<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원가입 | TourBoard</title>
    <link rel="stylesheet" href="css/main.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<!-- ✅ 네비게이션 바 -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top shadow">
  <div class="container-fluid">
    <a class="navbar-brand fw-bold" href="#">🌍 TourList</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="login.jsp">로그인</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<!-- ✅ 회원가입 폼 -->
<main class="container" style="margin-top: 80px;">
    <h2 class="my-4">회원가입</h2>
    <form action="registerProcess.jsp" method="post">
        <div class="mb-3">
            <label for="userId" class="form-label">아이디</label>
            <input type="text" class="form-control" id="userId" name="userId" required>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">비밀번호</label>
            <input type="password" class="form-control" id="password" name="password" required>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">이메일</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>
        <button type="submit" class="btn btn-primary">회원가입</button>
        <a href="New.jsp" class="btn btn-secondary ms-2">취소</a> <!-- 취소 버튼 추가 -->
    </form>
</main>

<!-- ✅ Footer -->
<footer class="bg-light text-center text-muted py-3 mt-5 border-top">
    ⓒ 2025 TourBoard. All rights reserved.
</footer>

<!-- JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
