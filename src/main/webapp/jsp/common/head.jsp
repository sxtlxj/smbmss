<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>	
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>Precision Medicine Matching System</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/public.css" />
</head>
<body>
<!--头部-->
    <header class="publicHeader">
        <h1>Precision Medicine Matching System</h1>
        <div class="publicHeaderR">
            <p><span>Hello</span><span style="color: #fff21b"> ${userSession.userCode }</span> ,welcome! </p>
            <a href="${pageContext.request.contextPath }/jsp/logout.do">Logout</a>
        </div>
    </header>
 <section class="publicMian ">
     <div class="left">
         <h2 class="leftH2"><span class="span1"></span> List <span></span></h2>
         <nav>
             <ul class="list">
                 <li><a href="${pageContext.request.contextPath }/jsp/drug.do?method=getDrug">Drug List</a></li>
                 <li><a href="${pageContext.request.contextPath }/jsp/upload.jsp">Upload</a></li>
                 <li><a href="${pageContext.request.contextPath }/jsp/ListFileServlet.do">Sample</a></li>
                 <li><a href="${pageContext.request.contextPath }/jsp/user.do?method=getUserList">User List</a></li>
                 <li><a href="${pageContext.request.contextPath }/jsp/pwdmodify.jsp">Password</a></li>
                 <li><a href="${pageContext.request.contextPath }/jsp/logout.do">Quit</a></li>
             </ul>
         </nav>
     </div>
     <input type="hidden" id="path" name="path" value="${pageContext.request.contextPath }"/>
     <input type="hidden" id="referer" name="referer" value="<%=request.getHeader("Referer")%>"/>