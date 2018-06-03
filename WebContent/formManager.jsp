<%@page import="cn.liyou.service.TourismService"%>
<%@page import="cn.liyou.pojo.Form"%>
<%@page import="java.util.List"%>
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
        *{
            padding: 0;
            margin: 0 auto;
        }
        .head{
            width: 1500px;
            height: 40px;
            background: #38B2E2;
        }
        nav{
            height:40px;
            width:1300px;
            margin-top:20px;
            text-align: center;

        }
        nav ul{
            list-style: none;
            margin-left: 100px;
        }
        nav ul li{
            float:left;
            width:220px;
            height:40px;
            line-height:40px;
            color: white;

        }
        nav ul li a{
            text-decoration: none;
            color: white;
        }
        .middle{
            width: 1400px;
            height: auto;
            background-color: #999999;
        }

        .out{
            width: 1400px;
            height: 500px;

            margin-top: 30px;
        }
        .out_left{
            width: 200px;
            height: 500px;
            background-color: #CCCCCC;
            float: left;
            text-align: center;

        }
        .out_left1{
            width: 200px;
            height: 80px;
            background-color: #EEEEEE;
            font-weight: 600;
            font-size: 20px;
            text-align: left;
            border-bottom: solid 1px white;
        }
        .out_left2{
            width: 200px;
            height: 60px;
            line-height: 60px;
            border-bottom: solid 1px white;
            cursor: pointer;
        }
        .out_left3{
            width: 200px;
            height: 60px;
            line-height: 60px;
            border-bottom: solid 1px white;
            cursor: pointer;
        }
        .out_right{
            width: 1200px;
            height: 500px;
            float: left;
        }
        .weichuxing{
            width: 1198px;
            height: 498px;
            display: block;
            border: solid 1px #E8EDF1;
        }
        .yichuxing{
            width: 1198px;
            height: 498px;
            border: solid 1px #E8EDF1;
            display: none;
        }
        .form_head{
            width: 1198px;
            height: 100px;

        }
        .form_head_nav{
            width: 1198px;
            height: 40px;
            background-color: #EEEEEE;
            margin-top: 20px;
            line-height: 40px;
        }
        .form_head_nav1{
            width: 110px;
            height: 40px;
            text-align: left;
            float: left;

            border-right: 1px solid white;
        }
        .form_head_nav2{
            word-break: break-all;
            text-overflow: ellipsis;
            display: -webkit-box; /** 将对象作为伸缩盒子模型显示 **/
            -webkit-box-orient: vertical; /** 设置或检索伸缩盒对象的子元素的排列方式 **/
            -webkit-line-clamp:1; /** 显示的行数 **/
            overflow: hidden;  /** 隐藏超出的内容 **/
            width: 170px;
            height: 40px;
            text-align: left;
            float: left;

            border-right: 1px solid white;

        }
        .form_head_nav3{
            width: 320px;
            height: 40px;
            text-align: left;
            float: left;


        }
        .form_message{
            width: 1200px;
            height: 400px;
            background-color: #FFF9ED;
        }
        .form_message_1{
            width: 1198px;
            height:38px ;

            border: solid 1px gainsboro;
            line-height: 38px;

        }
        .form_message a{
            text-decoration: none;
        }
        .back{
            margin-top: 5px;
            background-color: red;
            width: 80px;
            height: 30px;
            border-radius: 20px;
            float: left;
            text-align: center;
            line-height: 30px;
            cursor: pointer;

        }
        .back1{
            margin-top: 5px;
            background-color: red;
            width: 80px;
            height: 30px;
            border-radius: 20px;
            float: left;
            text-align: center;
            line-height: 30px;
            cursor: pointer;

        }
        .back2{
            margin-top: 5px;
            background-color: red;
            width: 80px;
            height: 30px;
            border-radius: 20px;
            float: left;
            text-align: center;
            line-height: 30px;
            cursor: pointer;

        }
        .back3{
            margin-top: 5px;
            background-color: red;
            width: 80px;
            height: 30px;
            border-radius: 20px;
            float: left;
            text-align: center;
            line-height: 30px;
            cursor: pointer;

        }
        .addAstyle{
            color:red;

        }

    </style>
    <script src="js/jquery-1.8.3.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function(){
            $(".out_left2,.out_left3").mouseover(function(){
                $(this).css({"color":"red","background-color":"white"});
            });
            $(".out_left2,.out_left3").mouseout(function(){
                $(this).css({"color":"black","background-color":"#CCCCCC"});
            });
            $(".out_left2").click(function(){
                $(".yichuxing").css("display","none");
               $(".weichuxing").css("display","block");

            });
            $(".out_left3").click(function(){
                $(".weichuxing").css("display","none");
                $(".yichuxing").css("display","block");
            });
            $(".form_head_nav2 a").mouseover(function(){
                $(this).addClass("addAstyle");
            });
            $(".form_head_nav2 a").mouseout(function(){
                $(this).removeClass("addAstyle");
            });
            
            $(".back1").click(function(){
            	var form_id=$(this).parents().siblings(".form_head_navn").val();
            	
            	var choose=confirm("确定同意退款吗?");
            	if(choose){
            	
            		$.ajax({
                        url : 'doBackForm',
                        data : {
                            'form_id': form_id
                           
                        },
                        type : 'post',
                        async : false,
                        success : function(result) {
                            if ($.trim(result) == "true") {
                                alert("同意退款成功");
                            } else {
                                alert("同音退款失败");
                                
                            }
                        },
                        error : function() {
                            alert("ajax执行失败");
                            flag = false;
                        }
                    })
            	}
            	
            });
            $(".back2").click(function(){
            	var form_id=$(this).parents().siblings(".form_head_navn").val();
            	
            	var choose=confirm("确定不同意退款吗?");
            	if(choose){
            	
            		$.ajax({
                        url : 'doBackForm2',
                        data : {
                            'form_id': form_id
                           
                        },
                        type : 'post',
                        async : false,
                        success : function(result) {
                            if ($.trim(result) == "true") {
                                alert("操作成功");
                            } else {
                                alert("不同意退款失败");
                                
                            }
                        },
                        error : function() {
                            alert("ajax执行失败");
                            flag = false;
                        }
                    })
            	}
            	
            });
            $(".back3").click(function(){
            	var form_id=$(this).parents().siblings(".form_head_navn").val();
            	
            	var choose=confirm("确定用户已出行吗?");
            	if(choose){
            	
            		$.ajax({
                        url : 'doBackForm3',
                        data : {
                            'form_id': form_id
                           
                        },
                        type : 'post',
                        async : false,
                        success : function(result) {
                            if ($.trim(result) == "true") {
                                alert("操作成功");
                            } else {
                                alert("操作失败");
                                
                            }
                        },
                        error : function() {
                            alert("ajax执行失败");
                            flag = false;
                        }
                    })
            	}
            	
            });
            
            $(".back4").click(function(){
            	var choose=confirm("确定删除订单吗?");
            	var form_id=$(this).parents().siblings(".form_head_navx").val();
      			
            	if(choose){
            	
            		$.ajax({
                        url : 'doBackForm4',
                        data : {
                            'form_id': form_id
                           
                        },
                        type : 'post',
                        async : false,
                        success : function(result) {
                            if ($.trim(result) == "true") {
                                alert("订单删除成功！！！");
                            } else {
                                alert("订单删除失败");
                                
                            }
                        },
                        error : function() {
                            alert("ajax执行失败");
                            flag = false;
                        }
                    })
            	}
            	
            });

        });
    </script>
</head>
<body>
<!--头部开始-->

&nbsp;&nbsp; <img src="images/main/logo.jpg" height="40px" width="40px"><span>&nbsp;liyou&nbsp;&nbsp;离游</span><span>&nbsp;&nbsp;&nbsp;供应商页面</span>

<div class="head">
    <nav>
        <ul >

            <li>
                <a href="formManagerServlet"> 用户订单管理</a>
            </li>
            <li>
                <a href="showTourism">更新旅游项目旅游</a>
            </li>
            <li>
                <a href="addTourism.jsp">上传新的旅游项目</a>
            </li>

            <li>
            <%
            	String s_name=(String)session.getAttribute("s_name");
            if(s_name!=null){
            	%>欢迎 <%=s_name%> 供应商<%
            }else{
            	%> <a href="login2.jsp">供应商登录</a>/<a href="register2.jsp">供应商注册</a><%
            }
            %>
               
            </li>
        </ul>
    </nav>

</div>
 <%
                	List<Form> list1=(List<Form>)request.getAttribute("list1");
                	List<Form> list2=(List<Form>)request.getAttribute("list2");
                	TourismService tService=new TourismService();
                
                %>
<div class="middle">
    <div class="out">
        <div class="out_left">
            <div class="out_left1">
                所有用户订单
            </div>
            <div class="out_left2">
                未处理订单
            </div>
            <div class="out_left3">
                已处理订单
            </div>
        </div>
        <div class="out_right">
            <div class="weichuxing" >
                <div class="form_head">
                    <h1 style="font-size: 15px">未处理订单</h1>
                    <div class="form_head_nav">
                        <div class="form_head_nav1">
                            订单号
                        </div>
                        <div class="form_head_nav2">
                            旅游名称
                        </div>
                        <div class="form_head_nav1">
                            支付金额
                        </div>
                        <div class="form_head_nav1">
                            出行日期
                        </div>
                        <div class="form_head_nav1">
                            用户电话
                        </div>
                        <div class="form_head_nav1">
                            订单人数
                        </div>
                        <div class="form_head_nav1">
                            订单状态
                        </div>
                        <div class="form_head_nav3">
                            订单操作
                        </div>
                    </div>

                </div>
               
                
                <div class="form_message">
                	<%
                		for(int i=0;i<list1.size();i++){
                			Form form=list1.get(i);
                			%>
                			<div class="form_message_1">
                			<input type="hidden" class="form_head_navn" value="<%=form.getForm_id()%>">
                        		<div class="form_head_nav1">
                           			 <%=form.getForm_id() %>
                       			 </div>
                        <div class="form_head_nav2">
                            <a href="#"><%=tService.getTourismById(form.getTourism_id()).getTourism_name() %></a>
                        </div>
                        <div class="form_head_nav1">
                            <%=form.getPay()%>
                        </div>
                        <div class="form_head_nav1">
                            <%=form.getForm_day() %>
                        </div>
                        <div class="form_head_nav1">
                             <%=tService.getTourismById(form.getTourism_id()).getCphone() %>
                        </div>
                        <div class="form_head_nav1">
                            <%=form.getMennum() %>成人<%=form.getChidrennum() %>儿童
                        </div>
                        <div class="form_head_nav1">
                           	<%=form.getState() %>
                        </div>
                        <div class="form_head_nav3">
                            <div class="back1">
                               	 同意退款
                            </div>
                            <div class="back2">
                              	  不同意退款
                            </div>
                            <div class="back3">
                                	已出行
                            </div>
                        </div>

                    </div>
                			
                			<%
                		}
                	%>
                    

                    

                </div>

                </div>
            <div class="yichuxing" >
                <div class="form_head">
                    <h1 style="font-size: 15px">已处理订单</h1>
                    <div class="form_head_nav">
                        <div class="form_head_nav1">
                            订单号
                        </div>
                        <div class="form_head_nav2">
                            旅游名称
                        </div>
                        <div class="form_head_nav1">
                            支付金额
                        </div>
                        <div class="form_head_nav1">
                            出行日期
                        </div>
                        <div class="form_head_nav1">
                            用户电话
                        </div>
                        <div class="form_head_nav1">
                            订单人数
                        </div>
                        <div class="form_head_nav1">
                            订单状态
                        </div>
                        <div class="form_head_nav3">
                            订单操作
                        </div>
                    </div>

                </div>
                <div class="form_message">
                   <%
                		for(int i=0;i<list2.size();i++){
                			Form form=list2.get(i);
                			%>
                			<div class="form_message_1">
                			<input type="hidden" class="form_head_navx" value="<%=form.getForm_id()%>">
                        		<div class="form_head_nav1">
                           			 <%=form.getForm_id() %>
                       			 </div>
                        <div class="form_head_nav2">
                            <a href="#"><%=tService.getTourismById(form.getTourism_id()).getTourism_name() %></a>
                        </div>
                        <div class="form_head_nav1">
                            <%=form.getPay()%>
                        </div>
                        <div class="form_head_nav1">
                            <%=form.getForm_day() %>
                        </div>
                        <div class="form_head_nav1">
                             <%=tService.getTourismById(form.getTourism_id()).getCphone() %>
                        </div>
                        <div class="form_head_nav1">
                            <%=form.getMennum() %>成人<%=form.getChidrennum() %>儿童
                        </div>
                        <div class="form_head_nav1">
                           	<%=form.getState() %>
                        </div>
                       
                        <div class="form_head_nav3">
                            <div class="back4">
                                删除订单
                            </div>

                        </div>


                    </div>
                			
                			<%
                		}
                	%>
                       
                    </div>

                </div>

            </div>


            </div>


    </div>
</div>
</body>
</html>