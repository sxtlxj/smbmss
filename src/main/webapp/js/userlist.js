//var userObj;

//用户管理页面上点击删除按钮弹出删除框(userlist.jsp)
/*
function deleteUser(obj){
	    id = obj;
		var msg = this.window.confirm("Are you sure to delete the user?");
		if(msg == true){
			location.href="${pageContext.request.contextPath}/delUserServlet?id="+id;
		}else{
			changeDLGContent("sorry, deletion failed");
	}
}
*/
function openYesOrNoDLG(){
	$('.zhezhao').css('display', 'block');
	$('#removeUse').fadeIn();
}

function cancleBtn(){
	$('.zhezhao').css('display', 'none');
	$('#removeUse').fadeOut();
}
function changeDLGContent(contentStr){
	var p = $(".removeMain").find("p");
	p.html(contentStr);
}

$(function(){
	//通过jquery的class选择器（数组）
	//对每个class为viewUser的元素进行动作绑定（click）
	/**
	 * bind、live、delegate
	 * on
	 */
	$(".viewUser").on("click",function(){
		//将被绑定的元素（a）转换成jquery对象，可以使用jquery方法
		var obj = $(this);
		window.location.href=path+"/jsp/user.do?method=view&uid="+ obj.attr("userid");
	});
	
	$(".modifyUser").on("click",function(){
		var obj = $(this);
		window.location.href=path+"/jsp/user.do?method=modify&uid="+ obj.attr("userid");
	});

	$('#no').click(function () {
		cancleBtn();
	});
	
	$('#yes').click(function () {
		deleteUser(userObj);
	});

	$(".deleteUser").on("click",function(){
		userObj = $(this);
		changeDLGContent("Are you sure to delete the user?");
		openYesOrNoDLG();
	});
	/*
	$(".deleteUser").on("click",function(){
		var obj = $(this);
		if(confirm("Are you sure to delete the user?")){
			$.ajax({
				type:"GET",
				url:path+"/jsp/user.do",
				data:{method:"deluser",uid:obj.attr("userid")},
				dataType:"json",
				success:function(data){
					if(data.delResult == "true"){//删除成功：移除删除行
						alert("deletion successful");
						obj.parents("tr").remove();
					}else if(data.delResult == "false"){//删除失败
						alert("sorry, deletion failed");
					}else if(data.delResult == "notexist"){
						alert("sorry, there is no such user");
					}
				},
				error:function(data){
					alert("sorry, deletion failed");
				}
			});
		}
	});
	*/
});