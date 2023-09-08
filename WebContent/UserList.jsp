<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import=" com.userbean.User" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core"   prefix="a" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>USER MANAGEMENT SYSTEM</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" >USER MANAGEMENT SYSTEM</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="<%= request.getContextPath()%>/list">Users</a>
        </li>
        </ul>
        </div>
        </div>
        </nav>
<center><h1 style="color:green">USER MANAGEMENT SYSTEM</h1></center>
<hr></hr>
<br><br>
<div class="container">
<a href="<%= request.getContextPath()%>/add" class="btn btn-success">ADD USER</a><br><br>
<table class="table table-striped">
<thead>
<tr>
<th>ID</th>
<th>NAME</th>
<th>EMAIL</th>
<th>CITY</th>
<th>ACTIONS</th>
</tr>

</thead>
<tbody>

<a:forEach items="${ display}" var="u">
<tr>
<td><a:out value="${u.id}"></a:out></td>
<td><a:out value="${u.name}"></a:out></td>
<td><a:out value="${u.email}"></a:out></td>
<td><a:out value="${u.city}"></a:out></td>
<td><a href="edit?id=<a:out value="${u.id}"></a:out>">EDIT</a>&nbsp;&nbsp;
    <a href="delete?id=<a:out value="${u.id}"></a:out>">DELETE</a></td>
</a:forEach>

</tr>
</tbody>
</table>
</div>



</body>
</html>