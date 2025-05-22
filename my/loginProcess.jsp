<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");

    String userId = request.getParameter("userId");
    String password = request.getParameter("password");

    // ✅ 하드코딩된 아이디/비밀번호 (예: test / 1234)
    String hardcodedId = "1";
    String hardcodedPw = "1";

    if (userId != null && password != null && userId.equals(hardcodedId) && password.equals(hardcodedPw)) {
        // 로그인 성공 → 세션에 저장
        session.setAttribute("userId", userId);
        response.sendRedirect("New.jsp"); // 메인 페이지로 이동
    } else {
%>
        <script>
            alert("로그인 실패: 아이디 또는 비밀번호가 일치하지 않습니다.");
            history.back();
        </script>
<%
    }
%>
