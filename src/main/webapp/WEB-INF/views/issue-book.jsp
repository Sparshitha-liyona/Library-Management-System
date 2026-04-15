<%@page import="com.jsp.library.entity.Student"%>
<%@page import="com.jsp.library.entity.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Issue Book</title>

<style>

/* ===== Background ===== */
body{
    margin:0;
    font-family:'Segoe UI',sans-serif;
    background-image:url("https://images.unsplash.com/photo-1495446815901-a7297e633e8d");
    background-size:cover;
    background-position:center;
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

/* Overlay */
body::before{
    content:"";
    position:absolute;
    width:100%;
    height:100%;
    background:rgba(40,55,20,0.75);
    top:0;
    left:0;
}

/* ===== Card ===== */
.container{
    position:relative;
    z-index:1;
    background:rgba(255,255,255,0.95);
    padding:40px;
    width:400px;
    border-radius:12px;
    box-shadow:0 10px 30px rgba(0,0,0,0.3);
}

/* Heading */
.title{
    text-align:center;
    font-size:22px;
    font-weight:bold;
    color:#556B2F;
    margin-bottom:20px;
}

/* Book name */
.book-name{
    text-align:center;
    font-size:18px;
    margin-bottom:20px;
    color:#333;
}

/* Select box */
select{
    width:100%;
    padding:10px;
    border-radius:6px;
    border:1px solid #ccc;
    margin-top:8px;
}

/* Button */
input[type="submit"]{
    width:100%;
    margin-top:20px;
    background:linear-gradient(45deg,#556B2F,#6B8E23);
    color:white;
    border:none;
    padding:12px;
    border-radius:6px;
    font-size:16px;
    cursor:pointer;
    transition:0.3s;
}

/* Hover */
input[type="submit"]:hover{
    transform:scale(1.05);
    box-shadow:0 5px 15px rgba(0,0,0,0.3);
}

</style>

</head>

<body>

<%
    Book book = (Book)request.getAttribute("book");
    List<Student> list = (List<Student>)request.getAttribute("list");
%>

<div class="container">

<div class="title">📖 Issue Book</div>

<div class="book-name">
Book : <b><%= book.getName() %></b>
</div>

<form action="issueBook" method="post">

<input type="hidden" name="bookId" value="<%= book.getId() %>">

<label>Select Student</label>

<select name="studentId">
<%
for(Student student : list)
{
%>

<option value="<%= student.getId() %>">
<%= student.getName() %>
</option>

<%
}
%>
</select>

<input type="submit" value="Issue Book">

</form>

</div>

</body>
</html>