<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import=" com.userbean.User" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <c:if test="${list==null }">
        <form action="insert" method="post"/>
        </c:if>
         <c:if test="${list!=null }">
        <form action="update" method="post"/>
        </c:if>
         <center>
        <h2>
        <c:if test="${list==null}">
        ADD USER
        </c:if>
        <c:if test="${list!=null}">
        EDIT USER
        </c:if>
        
         
        </h2>
        <div class="mb-3 container" >
  <input type="hidden" class="form-control" id="exampleFormControlInput5" placeholder="enter your name" value="${list.id}" name="id" style="width:20rem " >
</div>
       
<div class="mb-3 container" >
  <label for="exampleFormControlInput1" class="form-label">Name</label>
  <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="enter your name" value="${list.name}" name="name" style="width:20rem " >
</div>

<div class="mb-3 container" >
  <label for="exampleFormControlInput2" class="form-label">EMAIL</label>
  <input type="email" class="form-control" id="exampleFormControlInput2" placeholder="enter your email" value="${list.email }" name="email" style="width:20rem " >
</div>

<div class="mb-3 container" >
  <label for="exampleFormControlInput3" class="form-label">City</label>
  <input type="text" class="form-control" id="exampleFormControlInput3" placeholder="enter your city"  value="${list.city }"name="city" style="width:20rem " >
</div>

<div class="mb-3 container" >
  
  <input type="submit" class="btn btn-success" value="Save" style="width:15rem " >
</div>

</form>

</center>
</body>
</html>