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
<form method="post" action="UserServlet" class="registerForm">
    <!-- 注册主页面-->

    <div class="registerDiv">
        <!-- 左边标签部分-->
        <div class="registerLeftBox">
            <div class="TipregisterLeft">填写更新内容</div>
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
                <input id="name" name="name" value="曼谷暹罗海洋世界" onblur="checkName();">
            </div>

            <div class="registerMid">
                <input id="password" name="password" type="text"
                       value="天津" >
            </div>
            <div class="registerMid">
                <input id="repeatpassword" name="repassword" type="text" value="泰国曼谷" >
            </div>
            <div class="registerMid">
                <input  name="url" type="file" value="">
            </div>
            <div class="registerMid">
                <input  name="url" type="file" value="">
            </div>
            <div class="registerMid">
                <input id="companyname" name="companyname" type="text" value="曼谷暹罗海洋世界一日游" >
            </div>
            <div class="registerMid">
                <input id="address" name="address" type="text" value="100" >
            </div>
            <div class="registerMid">
                <input id="cphone" name="cphone" type="text" value="99" >
            </div>
            <div class="registerMid">
                <input id="url" name="url" type="text" value="海洋公园">
            </div>
            <div class="registerMid">
                <input id="fation" name="url" type="text" value="一日游">
            </div>
            <div class="registerMid">
                <input  name="url" type="text" value="国外">
            </div>
            <div class="registerMid">
                <input  name="url" type="text" value="1">
            </div>
            <div class="registerMid">
            <input  name="url" type="text" value="2018-05-28">
            </div>
            <div class="registerMid">
                <input  name="url" type="text" value="2018-7-20">
            </div>
            <div class="registerMid">
                <input  name="url" type="text" value="海狮海豹表演">
            </div>
            <div class="registerMid">
                <input  name="url" type="text" value="一分价格一分货，比常规线路多一天自由活动，品.质担当
一直被模仿 从未被超越！不拼虚高立减,拼您的满意!
 只含海南人气高景点,每天1-2个精华游玩处，金牌导游，省时省心，之选">
            </div>
            <div class="registerMid">
                <input  name="url" type="text" value="100">
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