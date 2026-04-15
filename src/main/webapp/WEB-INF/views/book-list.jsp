<%@page import="com.jsp.library.entity.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Library Dashboard</title>

<style>

body{
    margin:0;
    font-family:'Segoe UI',sans-serif;

    background-image:url("https://wallpapercave.com/wp/wp10168606.jpg");
    background-size:cover;
    background-position:center;
    background-attachment:fixed;
}

/* soft overlay so text is readable */
body::before{
    content:"";
    position:fixed;
    top:0;
    left:0;
    width:100%;
    height:100%;
    background:rgba(40,55,20,0.75);
    z-index:-1;
}

/* ===== Header ===== */
.header{
    background:linear-gradient(45deg,#556B2F,#6B8E23);
    color:white;
    padding:20px;
    text-align:center;
    font-size:28px;
    font-weight:bold;
    letter-spacing:1px;
}

/* ===== Navigation Cards ===== */
.nav-container{
    display:flex;
    justify-content:center;
    gap:30px;
    margin:30px;
}

.nav-card{
    background:white;
    padding:25px;
    width:220px;
    text-align:center;
    border-radius:12px;
    box-shadow:0 5px 15px rgba(0,0,0,0.2);
    transition:0.3s;
}

.nav-card a{
    text-decoration:none;
    font-size:18px;
    font-weight:bold;
    color:#556B2F;
}

.nav-card:hover{
    transform:translateY(-8px);
    background:#FAFAF5;
}

/* ===== Table Container ===== */
.table-container{
    width:85%;
    margin:40px auto;
    background:rgba(255,248,231,0.95);
    backdrop-filter:blur(6px);
    padding:25px;
    border-radius:15px;
    box-shadow:0 8px 25px rgba(0,0,0,0.3);
}

/* Table Container */
.table-container{
    width:80%;
    margin:30px auto;
}

/* Table */
table{
    width:100%;
    border-collapse:collapse;
    background:#FFF8E7;
    font-family:Arial, sans-serif;
}

/* Header */
th{
    background:#556B2F;
    color:white;
    padding:10px;
    text-align:center;
}

/* Cells */
td{
    padding:10px;
    text-align:center;
    border-bottom:1px solid #ddd;
}

/* Light hover */
tr:hover{
    background:#F5F1E6;
}

/* Issue button */
.issue-btn{
    text-decoration:none;
    background:#6B8E23;
    color:white;
    padding:5px 10px;
    border-radius:4px;
}

.issue-btn:hover{
    background:#556B2F;
}
</style>

</head>

<body>

<div class="header">
📚 Library Management System
</div>

<div class="nav-container">

<div class="nav-card">
<a href="addBookPage">➕ Add Book</a>
</div>

<div class="nav-card">
<a href="addStudentPage">🎓 Add Student</a>
</div>

<div class="nav-card">
<a href="issueDetails">📖 View Issue Details</a>
</div>

</div>

<%
  List<Book> list = (List<Book>) request.getAttribute("list");
%>

<div class="table-container">

<h2 style="color:#556B2F;">Available Books</h2>

<table>
<tr>
<th>NAME</th>
<th>AUTHOR</th>
<th>AVAILABLE COPIES</th>
<th>ISSUE BOOK</th>
</tr>

<%
for(Book book : list)
{
%>

<tr>
<td><%= book.getName() %></td>
<td><%= book.getAuthor() %></td>
<td><%= book.getAvailableCopies() %></td>
<td>
<a class="issue-btn" href="issuePage?id=<%= book.getId() %>">
Issue
</a>
</td>
</tr>

<%
}
%>

</table>

</div>

</body>
</html>