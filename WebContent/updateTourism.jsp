<%@page import="cn.liyou.pojo.Tourism"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
            width: 800px;
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
            width: 240px;
            height: auto;
            float: left;
        }

        /*中间*/
        .registerMid {
            width: 200px;
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
    </style>
</head>
<body>
<!--注册表单-->
<form method="post" action="doUpdate" class="registerForm">
    <!-- 注册主页面-->

    <div class="registerDiv">
        <!-- 左边标签部分-->
        <div class="registerLeftBox">
            <div class="TipregisterLeft">填写更新内容</div>
            <div class="registerLeft">项目名</div>

            <div class="registerLeft">出发地</div>
            <div class="registerLeft">目的地</div>

           
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
		<%
			Tourism tourism=(Tourism)request.getAttribute("tourism");
		
		%>
		 <!-- 中间表单-->
	
		 
		
        <div class="registerMidBox">
            <div class="registerMid"></div>
            <div class="registerMid">
                <input id="name" name="tourism_name" type="text" value="<%=tourism.getTourism_name()%>">
                <input type="text" hidden name="tourism_id"  value="<%=tourism.getTourism_id()%>">
            </div>

            <div class="registerMid">
                <input id="password" name="departure" type="text" value="<%=tourism.getDeparture()%>" >
            </div>
            <div class="registerMid">
                <input id="repeatpassword" name="destination" type="text" value="<%=tourism.getDestination()%>" >
            </div>
           
            <div class="registerMid">
                <input id="companyname" name="rote" type="text" value="<%=tourism.getRote()%>" >
            </div>
            <div class="registerMid">
                <input  id="price" name="price" type="text" value="<%=tourism.getPrice()%>" >
            </div>
            <div class="registerMid">
                <input  name="discountprice" type="text" value="<%=tourism.getDiscountprice()%>" >
            </div>
            <div class="registerMid">
                <input id="url" name="special" type="text" value="<%=tourism.getSpecial()%>">
            </div>
            <div class="registerMid">
                <input id="fation" name="fashion" type="text" value="<%=tourism.getFashion()%>">
            </div>
            <div class="registerMid">
                <input  name="type" type="text" value="<%=tourism.getType()%>">
            </div>
            <div class="registerMid">
                <input  name="days" type="text" value="<%=tourism.getDays()%>">
            </div>
            <div class="registerMid">
            <input  name="firstday" type="date" value="<%=tourism.getFirstday()%>">
            </div>
            <div class="registerMid">
                <input  name="lastday" type="date" value="<%=tourism.getLastday()%>">
            </div>
            <div class="registerMid">
                <input  name="views" type="text" value="<%=tourism.getViews()%>">
            </div>
            <div class="registerMid">
                <input  name="smessage" type="text" value="<%=tourism.getSmessage()%>">
            </div>
            <div class="registerMid">
                <input  name="stock" type="text" value="<%=tourism.getStock()%>">
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