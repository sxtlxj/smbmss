<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/jsp/common/head.jsp"%>
        <div class="right">
            <div class="location">
                <strong>Now you are at:</strong>
                <span>User Management</span>
            </div>
            <div class="search">
           		<form method="get" action="${pageContext.request.contextPath }/jsp/user.do">
					 <a href="${pageContext.request.contextPath}/jsp/useradd.jsp" >add a user</a>
				</form>
            </div>
            <!--用户-->
            <table class="providerTable" cellpadding="0" cellspacing="0">
                <tr class="firstTr">
                    <th width="10%">UserCode</th>
                    <th width="20%">UserName</th>
                    <th width="10%">Password</th>
                    <th width="30%">Management</th>
                </tr>
                   <c:forEach var="user" items="${userList}" varStatus="status">
					<tr>
						<td>
                            <span>${user.userCode }</span>
						</td>
						<td>
                            <span>${user.userName }</span>
						</td>
						<td>
							<span>${user.userPassword }</span>
						</td>
                        <td>
                            <span><a class="deluser" href="javascript:;" id = ${user.id }) onclick = "javascript:delUser(${user.id})"><img src="${pageContext.request.contextPath }/images/schu.png" alt="delete" title="delete"/></a></span>
						</td>
					</tr>
				</c:forEach>
			</table>
        </div>
    </section>
<script LANGUAGE="JavaScript">
    function delUser(id) {
        var msg = this.window.confirm("Are you sure to delete the user?");
        if(msg == true){
            location.href="${pageContext.request.contextPath}/jsp/deluser.do?id="+id;
        }
    }
</script>
<!--点击删除按钮后弹出的页面-->


<%@include file="/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/userlist.js"></script>
