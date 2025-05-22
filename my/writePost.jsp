<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.nio.file.Paths, java.io.File" %>
<%
    request.setCharacterEncoding("UTF-8");

    String title = request.getParameter("title");
    String description = request.getParameter("description");

    Part filePart = null;
    try {
        filePart = request.getPart("image");
    } catch (Exception e) {
        filePart = null; // multipart 아니면 null 처리
    }

    String imageUrl = "";

    if (filePart != null && filePart.getSize() > 0) {
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        String uploadDir = application.getRealPath("/") + "images/";
        File uploadFolder = new File(uploadDir);
        if (!uploadFolder.exists()) uploadFolder.mkdirs();

        File file = new File(uploadFolder, fileName);
        filePart.write(file.getAbsolutePath());

        imageUrl = "images/" + fileName;
    }

    // 저장 로직 간단히 처리 (여기서는 그냥 세션에 저장하는 예)
    java.util.List posts = (java.util.List)session.getAttribute("posts");
    if(posts == null) posts = new java.util.ArrayList();

    java.util.Map post = new java.util.HashMap();
    post.put("title", title);
    post.put("description", description);
    post.put("imageUrl", imageUrl);

    posts.add(post);
    session.setAttribute("posts", posts);

    response.sendRedirect("New.jsp");
%>
