<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加旅游项目</title>
</head>
<body>
  <style>
        <!--
        全局-->* {
            padding: 0;
            margin: 0 auto;
            background-color: #EFEFEF;
        }

        /*主体*/
        .registerDiv {
            width:900px;
            height: auto;
            margin-left: 250px;
            margin-top: 50px;
            /*  background-color: #FAFAFA;*/
        }

        /*左边整体*/
        .registerLeftBox {
            width: 250px;
            height:auto;
            display: inline;
            float: left;
            padding-right: 50px;
        }

        /*左边*/
        .registerLeft {
            width: 300px;
            height: 60px;
            text-align: right;
        }

        .TipregisterLeft {
            width: 300px;
            height: 60px;
            text-align: right;
            font-weight: bold;
        }

        /*中间整体*/
        .registerMidBox {
            width: 350px;
            height: auto;
            float: left;
        }

        /*中间*/
        .registerMid {
            width:290px;
            height: 60px;
            text-align: left;
            padding-left: 50px;
        }

        .registerMid input {
            height: 20px;
        }

        .mustWrite {
            color: red;
        }

        /*右边整体*/
        .registerRightBox {
            width: 250px;
            height: auto;
            float: right;
        }

        /*右边*/
        .registerRight {
            width: 250px;
            height: 60px;
            text-align: left;
        }

        .unameDiv, .pwdDiv, .repwdDiv {
            width: 250px;
            height: 60px;
            text-align: left;
            color: red;
        }

        /*注册按钮*/
        .registerButtonDIV {
            width: 800px;
            height: 50px;

            margin-top: 10px;
        }

        .registerButtonDIV .submit {
            width: 400px;
            height: 36px;
            border-radius: 2px;
            color: white;
            background-color: #38B2E2;
            border-width: 0px;
            margin-left: 200px;
        }
        .newinput1{
        	width:50px;
        	
        }
         .newinput2{
        	width:50px;
        	
        }
    </style>
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <script type="text/javascript">
    	$(function(){
    		var massage=$("#massage").val();
    		if($.trim(massage)!="null"&&$.trim(massage)!=""){
    			alert(massage);
    		}
    		$("#button1").click(function(){
    			
    			var input=$("<input class='newinput1' type='file' name='file'/>");
    			
      			$("#registerMid1").prepend(input);
      			$(".comit").show();
    		});
			$("#button2").click(function(){
    			
    			var input2=$("<input class='newinput2' type='file' name='file'>");
    			
      			$("#registerMid2").prepend(input2);
      			$(".comit2").show();
    		});
    		$(".comit").click(function(){
    			$(".newinput1").hide();
    			$(this).hide();
    		});
    		$(".comit2").click(function(){
    			$(".newinput2").hide();
    			$(this).hide();
    		});
    	});
    
    </script>
</head>
<body>
<!--注册表单-->
<%
	String massage=(String)request.getAttribute("massage");
	
%>
<input type="hidden" id="massage" value="<%=massage%>">
<form method="post" action="addTourism"  enctype="multipart/form-data">
    <!-- 注册主页面-->

    <div class="registerDiv">
        <!-- 左边标签部分-->
        <div class="registerLeftBox">
            <div class="TipregisterLeft">添加旅游项目</div>
            <div class="registerLeft">项目名</div>

            <div class="registerLeft">出发地</div>
            <div class="registerLeft">目的地</div>

            <div class="registerLeft">展示图片</div>
            <div class="registerLeft">详情图片</div>
            <div class="registerLeft">行程概要</div>

            <div class="registerLeft">折前价格</div>
            <div class="registerLeft">折后价格</div>
            <div class="registerLeft">特色</div>
            <div class="registerLeft">旅游方式</div>
            <div class="registerLeft">旅游类型</div>
            <div class="registerLeft">行程天数</div>
            <div class="registerLeft">最早出发日期</div>
            <div class="registerLeft">最晚出发日期</div>
            <div class="registerLeft">景点概要</div>
            <div class="registerLeft">供应商留言</div>
            <div class="registerLeft">库存数量</div>
        </div>

        <!-- 中间表单-->
        <div class="registerMidBox">
            <div class="registerMid"></div>
            <div class="registerMid">
                <input id="name" name="tourism_name" value="上海一日游">
            </div>

            <div class="registerMid">
                <input id="password" name="departure" type="text" value="上海" >
            </div>
            <div class="registerMid">
                <input id="repeatpassword" name="destination" type="text" value="上海" >
            </div>
            <div class="registerMid" id="registerMid1">
            	
                <input type="button" id="button1" value="添加展示图片">
				<input type="button" class="comit" hidden value="完成">
            </div>
            <div class="registerMid" id="registerMid2">
                <input type="button" id="button2" value="添加项目详情图片">
				<input type="button" class="comit2" hidden value="完成">
            </div>
            <div class="registerMid">
                <input id="companyname" name="rote" type="text" value="上海迪士尼" >
            </div>
            <div class="registerMid">
                <input name="price" type="text" value="100" >
            </div>
            <div class="registerMid">
                <input  name="discountprice" type="text" value="99" >
            </div>
            <div class="registerMid">
                <input id="url" name="special" type="text" value="迪士尼">
            </div>
            <div class="registerMid">
                <input id="fation" name="fashion" type="text" value="跟团游">
            </div>
            <div class="registerMid">
                <input  name="type" type="text" value="上海">
            </div>
            <div class="registerMid">
                <input  name="days" type="text" value="1">
            </div>
            <div class="registerMid">
            <input  name="firstday" type="date" value="2018-6-6">
            </div>
            <div class="registerMid">
                <input  name="lastday" type="date" value="2018-12-2">
            </div>
            <div class="registerMid">
                <input  name="views" type="text" value="上海迪士尼">
            </div>
            <div class="registerMid">
                <input  name="smessage" type="text" value="迪士尼乐园">
            </div>
            <div class="registerMid">
                <input  name="stock" type="text" value="1000">
            </div>
        </div>

        <div class="registerRightBox">
            <div class="registerRight"></div>
            <div class="unameDiv"></div>
            <div class="registerRight"></div>
            <div class="pwdDiv"></div>
            <div class="repwdDiv"></div>
        </div>

        <div>

        </div>
        <!--注册按钮-->
        <div class="registerButtonDIV">
            <input type="submit" value="提交" class="submit">
        </div>


    </div>
</form>

</body>
</html>