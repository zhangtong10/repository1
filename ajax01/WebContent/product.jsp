<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		//异步提交， product.jsp ，将 姓名和评价内容显示在已有评论的下方
		//使用$.get() ，  $.post()完成
		$("#btn01").click(function(){
			//获取数据
			var uu = $("#uname").val();
			var cc = $("#content").val();
			$.post("product.jsp",null,function(response,status,xhr){
				//创建节点h2节点，内部文本是名字
				var h2 = $("<h2>"+uu+":</h2>");
				//创建节点con节点，内部文本是评论内容
				var con = $("<p style='margin-left:80px'>"+cc+"</p>");
				//将名字和内容追加到已有评论后
				$("#d01").append(h2)
				$("#d01").append(con)
			});
			
		})
		
		
		//加载js
		$("#btn02").click(function(){
			$.getScript("a.js");
			
		})
		
		//加载json
		$("#btn03").click(function(){
			$.getJSON("a.json",function(response,status,xhr){
				
				alert(response.uname)
			});
			
		})
	})

</script>

</head>
<body>
<h1>商品评价区</h1>
姓名:<input type="text" id="uname"><br>
评价:<textarea rows="5" cols="40" id="content"></textarea>
<br>
<button id="btn01">提交评价</button>


<button id="btn02">加载js</button>

<button id="btn03">加载json</button>
<div id="d01">
<h1>已有评论： </h1>

</div>


</body>
</html>