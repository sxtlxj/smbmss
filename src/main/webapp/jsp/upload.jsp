<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<%@include file="/jsp/common/head.jsp"%>
<body>
<%--<div align="center">--%>
    <style> h2 {line-height: 30px} </style>
    <table width="100" border="0" cellspacing="0" cellpadding="0" height="200" line-height = "20">
        <tr>
            <form action="${pageContext.request.contextPath}/jsp/upload.do" method="post" enctype="multipart/form-data">
                    <h2>
                        Sample Name：<input type="text" id="uploadedBy" value="uploadedBy" name="uploadedBy">

                        <p><input type="file" value="choose file" name="file1"></p>
                        <p><input type="submit" value="Submit">|<input type="reset" value="Reset"></p>
                    </h2>

            </form>
        </tr>
    </table>
<%--</div>--%>
</body>
<%@include file="/jsp/common/foot.jsp" %>
</html>
