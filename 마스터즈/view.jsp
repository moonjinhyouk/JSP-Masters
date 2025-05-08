<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>

<html>
<head>
    <title>게시글 보기</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .header {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 15px;
        }

        .post-content {
            padding: 20px;
            margin: 20px;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>

<!-- 헤더 -->
<div class="header">
    <h1>${post.title}</h1>
</div>

<!-- 게시글 내용 -->
<div class="post-content">
    <h3>${post.title}</h3>
    <p>${post.description}</p>
    <img src="${post.imageUrl}" alt="${post.title}" style="width:100%;">
    <p><a href="main.jsp">목록으로 돌아가기</a></p>
</div>

<!-- 푸터 -->
<div class="footer">
    <p>&copy; 2025 여행 게시판. All Rights Reserved.</p>
</div>

</body>
</html>
