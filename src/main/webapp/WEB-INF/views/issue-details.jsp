<%@page import="com.jsp.library.entity.Issue"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Issue Details</title>

<style>

/* ===== Background ===== */
body{
    margin:0;
    font-family:'Segoe UI',sans-serif;
    background:#FFF8E7;
}

/* ===== Header ===== */
.header{
    background:linear-gradient(45deg,#556B2F,#6B8E23);
    color:white;
    padding:20px;
    text-align:center;
    font-size:26px;
    font-weight:bold;
}

/* ===== Table Container ===== */
.container{
    width:90%;
    margin:40px auto;
    background:white;
    padding:25px;
    border-radius:12px;
    box-shadow:0 5px 20px rgba(0,0,0,0.2);
}

/* Table Styling */
table{
    width:100%;
    border-collapse:collapse;
}

th{
    background:#556B2F;
    color:white;
    padding:12px;
}

td{
    text-align:center;
    padding:10px;
    border-bottom:1px solid #ddd;
}

tr:hover{
    background:#F4F7F2;
}

/* Return Button */
.return-btn{
    text-decoration:none;
    background:#6B8E23;
    color:white;
    padding:6px 12px;
    border-radius:5px;
    transition:0.3s;
}

.return-btn:hover{
    background:#556B2F;
}

</style>

</head>

<body>

<div class="header">
📚 Issue Details & Return Management
</div>

<%
List<Issue> list =  (List<Issue>)request.getAttribute("list");
%>

<div class="container">

<table>

<tr>
<th>STUDENT</th>
<th>BOOK</th>
<th>ISSUE DATE</th>
<th>RETURN DATE</th>
<th>STATUS</th>
<th>RETURN STATUS</th>
</tr>

<% 
for(Issue issue : list)
{
%>

<tr>
<td><%= issue.getStudent().getName() %></td>
<td><%= issue.getBook().getName() %></td>
<td><%= issue.getIssueDate() %></td>
<td><%= issue.getReturnDate() %></td>
<td><%= issue.getStatus() %></td>

<td>
<%
if(issue.getStatus().equals("ISSUED"))
{
%>
<a class="return-btn" href="returnBook?id=<%=issue.getId()%>">
Return
</a>
<%
}
%>
</td>

</tr>

<%
}
%>

</table>

</div>

</body>
</html>