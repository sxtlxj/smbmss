
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/jsp/common/head.jsp"%>
<div class="right">
    <div class="location">
        <strong>Now you are at:</strong>
        <span>Match Result</span>
    </div>
    <div class="search">
        <form method="get" action="${pageContext.request.contextPath }/jsp/">
            <input name="method" value="query" class="input-text" type="hidden">
            <%--            <input	value="search" type="submit" id="searchbutton">--%>
        </form>
    </div>

        <!--用户-->
    <table class="providerTable" cellpadding="0" cellspacing="0">
        <tr class="firstTr">
            <th width="20%">Name</th>
            <th width="20%">Source</th>
            <th width="60%">Summary</th>

        </tr>
        <c:forEach var="drugLabel" items="${drugLableList}" varStatus="status">
            <tr>
                <td>
                    <span>${drugLabel.name}</span>
                </td>
                <td>
                    <span>${drugLabel.source}</span>
                </td>
                <td>
                    <span>${drugLabel.summaryMarkdown}</span>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</section>

<%@include file="/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/userlist.js"></script>

