<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Sample View</title>
</head>

<%@include file="/jsp/common/head.jsp"%>

<div class="providerTable" cellpadding="0" cellspacing="0">

    <style> h1{font-size: 30px} </style>
    <style> h2{font-size: 20px} </style>


    <table class="providerTable" cellpadding="0" cellspacing="0">
        <tr class="firstTr">
            <th width="10%">Sample Id</th>
            <th width="20%">UploadedBy</th>
            <th width="25%">Filename</th>
            <th width="35%">createdAt</th>
            <th width="10%">Action</th>
        </tr>
        <!-- 遍历Map集合, 暂时先放弃download -->
<%--        <c:forEach var="me" items="${fileNameMap}">
            <c:url value="/jsp/DownLoadServlet.do" var="downurl">
                <c:param name="filename" value="${me.key}"></c:param>
            </c:url>
            <c:url value="/jsp/MatchServlet.do" var="match">
                &lt;%&ndash;问题所在&ndash;%&gt;
                <c:param name="sampleId" value="8"></c:param>
            </c:url>
            <tr>
                <td>
                    <span>
                    ${me.value}
                    </span>
                </td>
                <td>
                    <span>
                            <a href="${downurl}">Download</a>
                    </span></td>
                <td>
                    <span><a href="${match}">Match</a></span>
                </td>
            </tr>
        </tr>
        </c:forEach>--%>

        <tbody>
        <c:forEach items="${samples}" var="item" varStatus="loop">
            <tr>
                <td>${item.id}</td>
                <td>${item.uploadedBy}</td>
                <td>${item.filename}</td>
                <td>${item.createdAt}</td>
                <td><a href="${pageContext.request.contextPath }/jsp/MatchServlet.do?sampleId=${item.id}">matching</a></td>
            </tr>
        </c:forEach>
        </tbody>

    </table>
    </div>
<%@include file="/jsp/common/foot.jsp" %>
</html>