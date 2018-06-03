<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>

    <link href="js/mF_fancy.css" rel="stylesheet" type="text/css">

    </link>
    <script src="js/myfocus-2.0.1.min.js" ></script>
    <script src="js/mF_fancy.js" ></script>
    <script type="text/javascript">
        myFocus.set({
            id:'picBox'
        })
    </script>
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
            width:160px;
            height:40px;
            line-height:40px;
            color: white;

        }
        nav ul li a{
            text-decoration: none;
            color: white;
        }
        .head_f{
            width: 1300px;
            height: 58px;

            margin-top: 15px;
        }
        .head_f .departure{
            width: 150px;
            height: 40px;
            background-color: #F9F9F9;
            margin-left: 0px;
            float: left;
            border: solid 1px #D6D6D6;



        }
        .d_1{
            float: left;
            line-height: 40px;
            margin-top: 5px;

        }
        .d_2{
            float:left;
            margin-left: 15px;
            line-height: 40px;
            cursor: pointer;
        }
        .d_2 span{
            color: #494eff;
            font-size: 19px;

        }
        .head_f_right{
            width: 500px;
            height: 50px;
            margin-top: 0px;
            margin-left: 300px;
            float: left;
        }
        .middle{
            width: 1300px;
            height: 1300px;

        }
        .middle_top{
            width: 1300px;
            height: 533px;

        }
        .middle_top_left{
            width: 400px;
            height: 533px;

            float: left;
            border: 2px solid blue;
        }
        .mtl_1{
            width:400px ;
            height: 66px;

            border-bottom: solid #EEEEEE 1px;

        }
        .mtl_1_left{
            width: 50px;
            height: 50px;
            margin-left: 5px;
            margin-top: 5px;
            float:left;
        }
        .mtl_1_right{
            margin-left: 5px;
            margin-top: 8px;
            width: 300px;
            height: 50px;
            float: left;
        }
        .mtl_1_right a{
            text-decoration: none;
            font-size:13px;
        }
        .mtl_1_right .mt1_a1{
            font-weight: 400;
            font-size: 18px;
        }
        .mtl_1_right_img{
            width: 30px;
            height: 50px;
            float: right;
            line-height: 66px;
        }
        .middle_top_right{
            width: 895px;
            height: 535px;
            float: right;
            background-color: #F9F9F9;
        }

            .ad
            {
                height:525px;
                width:895px;
            }
        .middle_middle{
            width: 1300px;
            height: 1800px;

        }
        .middle_middle1{
            margin-top: 35px;
            width: 1300px;
            height: 612px;

        }
        .mm1_top{
            width: 1300px;
            height: 57px;

            border-bottom: solid 2px #63B7E3;

        }
        .mm2_top{
            width: 1300px;
            height: 57px;
            border-bottom: solid 2px #F9AF46;
        }
        .mm3_top{
            width: 1300px;
            height: 57px;
            border-bottom: solid 2px #FF8C91;
        }
        .mm_img{
            width: 210px;
            height: 57px;
            float: left;

        }
        .mm_nav{
            width: 1000px;
            height: 57px;
            float: left;

        }
        .mm_nav ul{
            list-style: none;
            margin-left: 50px;

            margin-top: 20px;
            height: 20px;

        }
        .mm_nav li{
            width: 75px;
            height: 20px;
            line-height: 20px;
            float: left;
            text-align: center;
            border-right: 1px solid #CCCCCC;
        }
        .mm1_middle{
            width: 1300px;
            height: 546px;

        }
        .xian{
            width: 1090px;
            height: 1px;
            background-color: #63B7E3;
            margin-top: 5px;
            float: right;
        }
        .mm1m_left{
            height: 546px;
            width: 210px;
            float: left;

        }
        .mm1m_left_top{
            height: 183px;
            width: 210px;

        }
        .mm1m_right{
            width:1090px ;
            height:546px ;
            float: right;
            text-align: center;


        }
        .mm1m_right_top{
            width: 1090px;
            height: 364px;
            background-color: white;
            float: left;

        }
        .mm1m_right_bottom{
            width: 1090px;
            height: 182px;



        }
        .mm1m_right_top_left{
            width: 541px;
            height: 360px;
            background-color: white;
            float: left;

        }
        .mm1m_right_top_left_center{
            width: 525px;
            height: 344px;

            margin-top: 8px;

        }
        .a_huanhang{
            width: 525px;
            word-break: break-all;
            text-overflow: ellipsis;
            display: -webkit-box; /** 将对象作为伸缩盒子模型显示 **/
            -webkit-box-orient: vertical; /** 设置或检索伸缩盒对象的子元素的排列方式 **/
            -webkit-line-clamp: 2; /** 显示的行数 **/
            overflow: hidden;  /** 隐藏超出的内容 **/

        }
        .a_huanhang2{
            width: 270px;
            word-break: break-all;
            text-overflow: ellipsis;
            display: -webkit-box; /** 将对象作为伸缩盒子模型显示 **/
            -webkit-box-orient: vertical; /** 设置或检索伸缩盒对象的子元素的排列方式 **/
            -webkit-line-clamp: 2; /** 显示的行数 **/
            overflow: hidden;  /** 隐藏超出的内容 **/

        }
        .mm1m_right span{
            color: red;
            float: left;
        }
        .mm1m_right a{
            font-weight: 300;
            font-size: 13px;
            float: left;

        }
        .mm1m_right_top_right{
            width: 545px;
            height: 364px;

            float: right;

        }
        .mm1mrtrt{
            width: 545px;
            height: 182px;
        }
        .mm1mrtrt_left{
            width: 272.5px;
            height: 182px;
            float: left;
        }
        .mm1mrtrt_right{
            width: 272.5px;
            height: 182px;
            float: right;
        }
        .mm1mrtrt_left_center{
            margin-top: 8px;
            float: left;
            text-overflow: ellipsis;
            overflow: hidden;
        }

        .middle_middle3{
            margin-top: 35px;
            width: 1300px;
            height: 364px;

        }


        .mm3_top{
            width: 1300px;
            height: 57px;
            border-bottom: solid 2px #FF8C91;
        }
        .mm_img{
            width: 210px;
            height: 57px;
            float: left;

        }
        .mm_nav{
            width: 1000px;
            height: 57px;
            float: left;

        }
        .mm_nav ul{
            list-style: none;
            margin-left: 50px;

            margin-top: 20px;
            height: 20px;

        }
        .mm_nav li{
            cursor: pointer;
            width: 75px;
            height: 20px;
            line-height: 20px;
            float: left;
            text-align: center;
            border-right: 1px solid #CCCCCC;
        }
        .mm3_middle{
            width: 1300px;
            height: 364px;

        }
        .xian{
            width: 1090px;
            height: 1px;
            background-color: #63B7E3;
            margin-top: 5px;
            float: right;
        }
        .mm3m_left{
            height: 364px;
            width: 210px;
            float: left;

        }
        .mm3m_left_top{
            height: 183px;
            width: 210px;

        }
        .mm3m_right{
            width:1090px ;
            height:364px ;
            float: right;
            text-align: center;


        }
        .mm3m_right_top{
            width: 1090px;
            height: 182px;



        }
        .mm3m_right_bottom{
            width: 1090px;
            height: 182px;



        }

        .mm3m_right span{
            color: red;
            float: left;
        }
        .mm3m_right a{
            font-weight: 300;
            font-size: 13px;
            float: left;
        }


        .mm3mrtrt_left{
            width: 272.5px;
            height: 182px;
            float: left;
        }

        .mm3mrtrt_left_center{
            margin-top: 8px;
            float: left;
        }
        /*bottom开始*/
        .bottom{
            width: 1300px;
            height: 600px;

        }

        .bottom_top_out{
            width: 1090px;
            height: 150px;
            background-color: #FAFAFA;
        }
        .bottom_top_out ul{
            list-style: none;
            height: 100px;
            color: #7F7F7F;


        }
        .bottom_top_out li{
            margin-top: 22px;
            width: 135px;
            height: 110px;
            line-height: 20px;
            float: left;

            text-align: center;

        }
        .bottom_bottom{
            background-color:#F3F6F8 ;
            height: 300px;
            width: 1300px;
           margin-top: 200px;
        }
        .mdd{
            width: 402px;
            height: 553px;
            background-color: white;
            position: absolute;
            top:160px;
            left: 109px;
            display: none;
            border-left: 1px solid #D6D6D6;
            border-right: 1px solid #D6D6D6;
            border-bottom: 1px solid #D6D6D6;
        }
        .mmd_lef{
            width: 150px;
            float: left;
            height: 30px;
        }
        .mmd_right{
            width: 252px;
            height: 30px;
            float: left;
            border-top: 1px solid #D6D6D6;
        }
        .hotcity{
            width: 368px;
            height: 65px;

            margin-top: 30px;
            margin-left: 10px;

        }
        .hotcity span span{
            font-size: 15px;
            cursor: pointer;


        }
        .mmd_1{
            width: 368px;
            height: 48px;

            margin-left: 10px;
            border-bottom: 1px dashed #D6D6D6;
            line-height: 48px;




        }
        .mmd_1 span{
            cursor: pointer;
        }
        .mmd_1_1{
            width: 91px;
            height: 25px;

            margin-top:18px ;
            float: left;
            line-height: 25px;
            text-align: center;
            border-right: solid 1px #D6D6D6;

        }
        .mmd_1_2{
            width: 92px;
            height: 25px;

            margin-top:18px ;
            float: left;
            line-height: 25px;
            text-align: center;
        }

        .hidden1{
            width: 400px;
            height: 300px;
            background-color: white;
            position: absolute;
            display: none;
            top: 177px;
            left: 505px;
            z-index: 5;
            border-right: 1px solid #BBBBBB;
            border-bottom: 1px solid #BBBBBB;
            border-top: 1px solid #BBBBBB;
        }
        .hidden1 a{
            text-decoration: none;
            color: #666666;
        }
        .hidden1_left{
            width: 20px;
            height: 300px;
            float: left;

        }
        .hidden1_left_top{
            width: 20px;
            height: 68px;



        }
        .hidden1_left_b{
            width: 20px;
            height: 234px;
            border-left:1px solid #BBBBBB;
        }
        .hidden1_center{
            width: 100px;
            height: 300px;
            float: left;

        }
        .hidden1_right{
            width: 250px;
            height:300px ;
            float: left;

            margin-left: 20px;
        }
        .hidden1_center_1{
            width: 100px;
            height: 90px;
            text-align: right;
            margin-top: 10px;

            font-weight: 600;
            font-size: 16px;

        }
        .hidden1_right_1{
            width: 250px;
            height: 90px;
            text-align: left;
            margin-top: 10px;


            font-size: 14px;
        }
       span{
            cursor: pointer;
        }

        .hidden2{
            width: 400px;
            height: 300px;
            background-color: white;
            position: absolute;
            display: none;
            top: 245px;
            left: 505px;
            z-index: 5;
            border-right: 1px solid #BBBBBB;
            border-bottom: 1px solid #BBBBBB;
            border-top: 1px solid #BBBBBB;
        }
        .hidden2 a{
            text-decoration: none;
            color: #666666;
        }
        .hidden2_center_1{
            width: 100px;
            height: 50px;
            text-align: right;
            margin-top: 10px;

            font-weight: 600;
            font-size: 16px;

        }
        .hidden2_right_1{
            width: 250px;
            height: 50px;
            text-align: left;
            margin-top: 10px;

            color: #666666;
            font-size: 14px;
        }
        a{
            text-decoration: none;
        }
        .a_mouseover{
            color: blue;

        }
        .mm1m_right_top_leftclass{
            background-color:#FFFCF4;
            border:1px solid #FFD986;
        }






    </style>
    <script src="${pageContext.request.contextPath}/js/jquery-1.8.3.js" type="text/javascript"></script>
    <script type="text/javascript">
    window.onload=function (){

    	var position=$("#d_2span").text();
    	
    	if($.trim(position)==null||$.trim(position)==""||$.trim(position)=="null"){
    	
    		$("#d_2span").html("北京");
    	}

    }
        $(function(){
        	
            $(".head a").mouseover(function(){
                $(this).css({"color":"blue"});
            });
            $(".head a").mouseout(function(){
                $(this).css({"color":"white"});
            });
            $(".departure").mouseover(function(){
                $(this).css("background-color","white");
            });
            $(".departure").mouseout(function(){
                $(this).css("background-color","#F9F9F9");
            });
            $(".departure").toggle(function(){
                $(".mdd").css("display","block");

            },function(){
                $(".mdd").css("display","none");

            });
            $(".hotcity span span").mouseover(function(){
                $(this).css("text-decoration","underline");
            });
            $(".hotcity span span").mouseout(function(){
                $(this).css("text-decoration","none");
            });
            $(".mmd_1 span").mouseover(function(){
                $(this).css("color","#38B2E2");
            });
            $(".mmd_1 span").mouseout(function(){
                $(this).css("color","black");
            });
            $(".mmd_1 span,.hotcity span span").click(function(){
                var position2=$(this).html();
                $("#d_2span").html(position2);
               	$("#position").val(position2);
               	
               	$.ajax({
                    url : 'setPostion',
                    data : {
                        'position': position2,
                         
                       
                    },
                    type : 'post',
                    async : false,
                    success : function(result) {
                        if($.trim(result) == "true"){
                        	$(".mdd").css("display","none");
                        }else{
                        	
                        }
                    },
                    error : function() {
                        alert("ajax执行失败");
                        flag = false;
                    }
                })
    		
                
            });

            $("#mtl_1,.hidden1").mouseover(function(){

                $(this).children(".mtl_1_right_img").children().attr("src","images/main/big.png");
                $(".hidden1").css("display","block");

            });
            $("#mtl_1,.hidden1").mouseout(function(){
                $(this).children(".mtl_1_right_img").children().attr("src","images/main/big2.png");
                $(".hidden1").css("display","none");
            });
            $("#mtl_2,.hidden2").mouseover(function(){

                $(this).children(".mtl_1_right_img").children().attr("src","images/main/big.png");
                $(".hidden2").css("display","block");

            });
            $("#mtl_2,.hidden2").mouseout(function(){
                $(this).children(".mtl_1_right_img").children().attr("src","images/main/big2.png");
                $(".hidden2").css("display","none");
            });
            $(".mtl_1").mouseover(function(){

                $(this).children(".mtl_1_right_img").children().attr("src","images/main/big.png");


            });
            $(".mtl_1").mouseout(function(){
                $(this).children(".mtl_1_right_img").children().attr("src","images/main/big2.png");

            });

            $("a").mouseover(function(){
                $(this).addClass("a_mouseover");

            });
            $("a").mouseout(function(){
                $(this).removeClass("a_mouseover")
            });

            $(".mm_nav li").mouseover(function(){
                $(this).css("color","blue");
            });
            $(".mm_nav li").mouseout(function(){
                $(this).css("color","black");
            });

            $(".mm1m_right_top_left,.mm1mrtrt_left_center,.mm3mrtrt_left_center").mouseover(function(){
               $(this).addClass("mm1m_right_top_leftclass");
            });
            $(".mm1m_right_top_left,.mm1mrtrt_left_center,.mm3mrtrt_left_center").mouseout(function(){
                $(this).removeClass("mm1m_right_top_leftclass");
            });
			
            
            


        });

    </script>
</head>
<body>
    <!--头部开始-->

       &nbsp;&nbsp; <img src="images/main/logo.jpg" height="40px" width="40px"><span>&nbsp;liyou&nbsp;&nbsp;离游</span>

    <div class="head">
        <nav>
       <ul >

           <li>
               <a href="main.jsp"> 首页</a>
           </li>
           <li>
               <a href="select.jsp">旅游</a>
           </li>
           <li>
           <%
           		String user_name=(String)session.getAttribute("user_name");
           		if(user_name==null){
           			%><a href="login.jsp">订单</a><%
           		}else{
           			%>   <a href="formServlet?user_id=<%=session.getAttribute("user_id")%>">订单</a><%
           		}
           		 %>
            
           </li>
           <li>
           <%
           		
           		if(user_name==null){
           			%><a href="login.jsp">收藏</a><%
           		}else{
           			%>   <a href="FindCollection?user_id=<%=session.getAttribute("user_id")%>">收藏</a><%
           		}
           		 %>
            
              
           </li>
           <li>
           		<%
           		
           		if(user_name!=null){
           			%>用户&nbsp;<%=user_name %>&nbsp;你好<%
           		}else{
           			%> <a href="login.jsp">登录</a>/<a href="register.jsp">注册</a><%
           		}
           		 %>
              
           </li>
           <li>
           		<a>供应商登录</a>/<a>注册</a>
           </li>
       </ul>
        </nav>

    </div>
    <div class="head_f">
        <div class="departure">
      
            <div class="d_1"><img src="images/main/dibiao.png" width="20" height="28"></div>
            <div class="d_2"><span id="d_2span"><%=session.getAttribute("position") %></span>&nbsp;站</div>
        </div>
        <div class="mdd">
            <div class="mmd_lef">

            </div>
            <div class="mmd_right">

            </div>
            <div class="hotcity">
                <h1 style="font-size: 15px;font-weight: 300; color: #999999">
                    热门出发城市
                </h1>
                <span>
                    <span>北京</span>&nbsp;<span>上海</span>&nbsp;<span>天津</span>&nbsp;<span>重庆</span>&nbsp;<span>武汉</span>&nbsp;<span>南京</span>&nbsp;<span>西安</span>&nbsp;
                    <span>杭州</span>&nbsp;<span>广州</span>&nbsp;<span>成都</span>&nbsp;<span>深圳</span>&nbsp;<span>沈阳</span>&nbsp;
                </span>

            </div>
            <div class="mmd_1">
                <div class="mmd_1_1">
                    <span>北京</span>
                </div>
                <div class="mmd_1_1">
                    <span>天津</span>
                </div>
                <div class="mmd_1_1">
                    <span>上海</span>
                </div>
                <div class="mmd_1_2">
                    <span>重庆</span>
                </div>

            </div>
            <div class="mmd_1">
                <div class="mmd_1_1">
                    <span>沈阳</span>
                </div>
                <div class="mmd_1_1">
                    <span>长春</span>
                </div>
                <div class="mmd_1_1">
                    <span>哈尔滨</span>
                </div>
                <div class="mmd_1_2">
                    <span>呼和浩特</span>
                </div>

            </div>
            <div class="mmd_1">
                <div class="mmd_1_1">
                    <span>济南</span>
                </div>
                <div class="mmd_1_1">
                    <span>石家庄</span>
                </div>
                <div class="mmd_1_1">
                    <span>太原</span>
                </div>
                <div class="mmd_1_2">
                    <span>银川</span>
                </div>

            </div>
            <div class="mmd_1">
                <div class="mmd_1_1">
                    <span>西宁</span>
                </div>
                <div class="mmd_1_1">
                    <span>乌鲁木齐</span>
                </div>
                <div class="mmd_1_1">
                    <span>兰州</span>
                </div>
                <div class="mmd_1_2">
                    <span>西安</span>
                </div>

            </div>
            <div class="mmd_1">
                <div class="mmd_1_1">
                    <span>郑州</span>
                </div>
                <div class="mmd_1_1">
                    <span>南京</span>
                </div>
                <div class="mmd_1_1">
                    <span>合肥</span>
                </div>
                <div class="mmd_1_2">
                    <span>武汉</span>
                </div>

            </div>
            <div class="mmd_1">
                <div class="mmd_1_1">
                    <span>成都</span>
                </div>
                <div class="mmd_1_1">
                    <span>杭州</span>
                </div>
                <div class="mmd_1_1">
                    <span>南昌</span>
                </div>
                <div class="mmd_1_2">
                    <span>长沙</span>
                </div>

            </div>
            <div class="mmd_1">
                <div class="mmd_1_1">
                    <span>贵阳</span>
                </div>
                <div class="mmd_1_1">
                    <span>昆明</span>
                </div>
                <div class="mmd_1_1">
                    <span>南宁</span>
                </div>
                <div class="mmd_1_2">
                    <span>广州</span>
                </div>

            </div>
            <div class="mmd_1">
                <div class="mmd_1_1">
                    <span>福州</span>
                </div>
                <div class="mmd_1_1">
                    <span>海口</span>
                </div>
                <div class="mmd_1_1">
                    <span>香港</span>
                </div>
                <div class="mmd_1_2">
                    <span>澳门</span>
                </div>

            </div>

        </div>

        <div class="head_f_right">
            <div class="head_f_input">
            	<form action="selectServlet" method="post" >
				<input type="hidden" name="position" id="position" value="北京">
                <input style="width: 300px ;height: 40px" name="conditions" type="text" placeholder="请输入目的地、主题或关键字">
                <input style="width: 100px ;height: 45px; background-color:#FD782A; color: white"  type="submit" value="搜   索" >
            	</form>
            </div>

        </div>

    </div>

    <!--中间开始-->
    <!--hidden1开始-->
    <div class="hidden1">
        <div class="hidden1_left">
            <div class="hidden1_left_top">

            </div>
            <div class="hidden1_left_b">

            </div>
        </div>
        <div class="hidden1_center">
            <div class="hidden1_center_1">
                爸妈游
            </div>
            <div class="hidden1_center_1">
                亲子游
            </div>
            <div class="hidden1_center_1">
                蜜月游
            </div>

        </div>
        <div class="hidden1_right">
            <div class="hidden1_right_1">
                <a href="select.html">古镇游玩  </a>&nbsp;&nbsp;&nbsp;<a href="select.html">桂林山水</a>&nbsp;&nbsp;&nbsp;<a href="select.html">红色之旅</a>&nbsp;&nbsp;&nbsp;<a href="select.html">世界遗产</a>&nbsp;&nbsp;&nbsp;<a href="select.html">养生休闲</a>&nbsp;&nbsp;&nbsp;
            </div>
            <div class="hidden1_right_1">

                <a href="select.html">上海迪士尼</a>&nbsp;&nbsp;&nbsp;<a href="select.html">游乐园</a>&nbsp;&nbsp;&nbsp;<a href="select.html"> 探险体验</a>&nbsp;&nbsp;&nbsp;<a href="select.html">海洋公园</a>&nbsp;&nbsp;&nbsp;<a href="select.html">民俗体验</a>&nbsp;&nbsp;&nbsp;
            </div>
            <div class="hidden1_right_1">

                <a href="select.html">浪漫海岛</a>&nbsp;&nbsp;&nbsp;<a href="select.html">旅游婚礼</a>&nbsp;&nbsp;&nbsp;
            </div>
        </div>
    </div>
    <!--hidden1结束-->
    <!--hidden2开始-->
    <div class="hidden2">
        <div class="hidden1_left">
            <div class="hidden1_left_top">

            </div>
            <div class="hidden1_left_b">

            </div>
        </div>
        <div class="hidden1_center">
            <div class="hidden2_center_1">
                海南
            </div>
            <div class="hidden2_center_1">
                北京
            </div>
            <div class="hidden2_center_1">
                华东
            </div>
            <div class="hidden2_center_1">
                东北
            </div>
            <div class="hidden2_center_1">
                云南
            </div>

        </div>
        <div class="hidden1_right">
            <div class="hidden2_right_1">

                <a href="select.html">三亚</a>&nbsp;&nbsp;&nbsp;<a href="select.html">海口</a>&nbsp;&nbsp;&nbsp;<a href="select.html">亚龙湾</a>&nbsp;&nbsp;&nbsp;<a href="select.html">大东海</a>&nbsp;&nbsp;&nbsp;<a href="select.html">海棠湾</a>&nbsp;&nbsp;&nbsp;
                <a href="select.html">蜈支洲岛</a>&nbsp;&nbsp;&nbsp;<a href="select.html">天涯海角</a>&nbsp;&nbsp;&nbsp;<a href="select.html">西沙群岛</a>&nbsp;&nbsp;&nbsp;
            </div>
            <div class="hidden2_right_1">


                <a href="select.html">天安门</a>&nbsp;&nbsp;&nbsp;<a href="select.html">故宫</a>&nbsp;&nbsp;&nbsp;<a href="select.html"> 北海公园</a>&nbsp;&nbsp;&nbsp;<a href="select.html">后海</a>&nbsp;&nbsp;&nbsp;<a href="select.html">鸟巢</a>&nbsp;&nbsp;&nbsp;
                <a href="select.html">水立方</a>&nbsp;&nbsp;&nbsp;<a href="select.html">八达岭长城 </a>&nbsp;&nbsp;&nbsp;
            </div>
            <div class="hidden2_right_1">

                <a href="select.html">杭州</a>&nbsp;&nbsp;&nbsp;<a href="select.html">上海 </a>&nbsp;&nbsp;&nbsp;<a href="select.html">黄山 </a>&nbsp;&nbsp;&nbsp;<a href="select.html">乌镇</a>&nbsp;&nbsp;&nbsp;<a href="select.html">南京 </a>&nbsp;&nbsp;&nbsp;<a href="select.html"> 苏州 </a>&nbsp;&nbsp;&nbsp;
                <a href="select.html">扬州</a>&nbsp;&nbsp;&nbsp;<a href="select.html">无锡</a>&nbsp;&nbsp;&nbsp;
            </div>
            <div class="hidden2_right_1">


                <a href="select.html">长白山</a>&nbsp;&nbsp;&nbsp;<a href="select.html">金石滩 </a>&nbsp;&nbsp;&nbsp;<a href="select.html">大连</a>&nbsp;&nbsp;&nbsp;<a href="select.html">长春</a>&nbsp;&nbsp;&nbsp;<a href="select.html">哈尔滨</a>&nbsp;&nbsp;&nbsp;
                <a href="select.html">五大连池</a>&nbsp;&nbsp;&nbsp;<a href="select.html">亚布力</a>&nbsp;&nbsp;&nbsp;<a href="select.html"> 吉林</a>&nbsp;&nbsp;&nbsp;
            </div>
            <div class="hidden2_right_1">

                <a href="select.html">丽江</a>&nbsp;&nbsp;&nbsp;<a href="select.html">昆明</a>&nbsp;&nbsp;&nbsp;<a href="select.html">香格里拉</a>&nbsp;&nbsp;&nbsp;<a href="select.html">西双版纳</a>&nbsp;&nbsp;&nbsp;<a href="select.html">泸沽湖</a>&nbsp;&nbsp;&nbsp;
                <a href="select.html">玉龙雪山</a>&nbsp;&nbsp;&nbsp;<a href="select.html">红河</a>&nbsp;&nbsp;&nbsp;<a href="select.html">大理 </a>&nbsp;&nbsp;&nbsp;
            </div>
        </div>
    </div>
    <!--hidden2结束-->


    <div class="middle">
        <div class="middle_top">
            <div class="middle_top_left">
                <div class="mtl_1" id="mtl_1">
                    <div class="mtl_1_left"><img src="images/main/style1.png" width="50px" height="50px"></div>
                   <div class="mtl_1_right">
                       <a class="mt1_a1" href="#">主题旅游</a><br>
                       <a href="select.html">爸妈游</a>&nbsp;<a href="select.html">上海迪士尼</a>&nbsp;<a href="select.html">闺蜜游</a>&nbsp;<a href="select.html">徒步登山</a>
                   </div>
                    <div class="mtl_1_right_img">
                        <img src="images/main/big2.png" width="15px" height="15px">
                    </div>
                </div>

                <div class="mtl_1" id="mtl_2">
                    <div class="mtl_1_left"><img src="images/main/style3.png" width="50px" height="50px"></div>
                    <div class="mtl_1_right">
                        <a class="mt1_a1" href="#">境内旅游</a><br>
                        <a href="select.html">三亚</a>&nbsp;<a href="select.html">厦门</a>&nbsp;<a href="select.html">丽江</a>&nbsp;<a href="select.html">贵州</a>
                        &nbsp;<a href="select.html">桂林</a>&nbsp;<a href="select.html">张家界</a>&nbsp;<a href="select.html">武汉</a>&nbsp;<a href="select.html">西安</a>

                    </div>
                    <div class="mtl_1_right_img">
                        <img src="images/main/big2.png" width="15px" height="15px">
                    </div>
                </div>
                <div class="mtl_1">
                    <div class="mtl_1_left"><img src="images/main/style4.png" width="50px" height="50px"></div>
                    <div class="mtl_1_right">
                        <a class="mt1_a1" href="select.html">香港</a>&nbsp;<a class="mt1_a1" href="select.html">澳门</a>&nbsp;<a class="mt1_a1" href="select.html">台湾</a><br>
                        <a href="select.html">爸妈游</a>&nbsp;<a href="select.html">香港迪士尼</a>&nbsp;<a href="select.html">台北</a>&nbsp;<a href="select.html">日月潭</a>&nbsp;<a href="select.html">高雄</a>&nbsp;<a href="select.html">垦丁</a>
                    </div>
                    <div class="mtl_1_right_img">
                        <img src="images/main/big2.png" width="15px" height="15px">
                    </div>
                </div>
                <div class="mtl_1">
                    <div class="mtl_1_left"><img src="images/main/style5.png" width="50px" height="50px"></div>
                    <div class="mtl_1_right">
                        <a class="mt1_a1" href="#">日本</a>&nbsp;<a class="mt1_a1" href="#">蒙古</a><br>
                        <a href="select.html">东京</a>&nbsp;<a href="select.html">大阪</a>&nbsp;<a href="select.html">北海道</a>&nbsp;<a href="select.html">冲绳</a>
                    </div>
                    <div class="mtl_1_right_img">
                        <img src="images/main/big2.png" width="15px" height="15px">
                    </div>
                </div>
                <div class="mtl_1">
                    <div class="mtl_1_left"><img src="images/main/style6.png" width="50px" height="50px"></div>
                    <div class="mtl_1_right">
                        <a class="mt1_a1" href="#">东南亚</a>&nbsp;<a class="mt1_a1" href="#">南亚</a><br>
                        <a href="select.html">马尔代夫</a>&nbsp;<a href="select.html">泰国</a>&nbsp;<a href="select.html">新加坡</a>&nbsp;<a href="select.html">巴厘岛</a>&nbsp;<a href="select.html">菲律宾</a>
                    </div>
                    <div class="mtl_1_right_img">
                        <img src="images/main/big2.png" width="15px" height="15px">
                    </div>
                </div>
                <div class="mtl_1">
                    <div class="mtl_1_left"><img src="images/main/style7.png" width="50px" height="50px"></div>
                    <div class="mtl_1_right">
                        <a class="mt1_a1" href="#">欧洲</a><br>
                        <a href="select.html">意大利</a>&nbsp;<a href="select.html">英国</a>&nbsp;<a href="select.html">西班牙</a>&nbsp;<a href="select.html">法国</a>&nbsp;<a href="select.html">瑞士</a>&nbsp;<a href="select.html">德国</a>&nbsp;<a href="select.html">希腊</a>
                    </div>
                    <div class="mtl_1_right_img">
                        <img src="images/main/big2.png" width="15px" height="15px">
                    </div>
                </div>
                <div class="mtl_1">
                    <div class="mtl_1_left"><img src="images/main/style8.png" width="50px" height="50px"></div>
                    <div class="mtl_1_right">
                        <a class="mt1_a1" href="#">美洲</a><br>
                        <a href="select.html">美国</a>&nbsp;<a href="select.html">夏威夷</a>&nbsp;<a href="select.html">加拿大</a>&nbsp;<a href="select.html">洛杉矶</a>&nbsp;<a href="select.html">纽约</a>&nbsp;<a href="select.html">关岛</a>
                    </div>
                    <div class="mtl_1_right_img">
                        <img src="images/main/big2.png" width="15px" height="15px">
                    </div>
                </div>
                <div class="mtl_1">
                    <div class="mtl_1_left"><img src="images/main/style9.png" width="50px" height="50px"></div>
                    <div class="mtl_1_right">
                        <a class="mt1_a1" href="#">澳新</a>&nbsp;<a class="mt1_a1" href="#">中东非洲</a><br>
                        <a href="select.html">澳大利亚</a>&nbsp;<a href="select.html">新西兰</a>&nbsp;<a href="select.html">毛里求斯</a>&nbsp;<a href="select.html">迪拜</a>&nbsp;<a href="select.html">埃及</a>
                    </div>
                    <div class="mtl_1_right_img">
                        <img src="images/main/big2.png" width="15px" height="15px">
                    </div>
                </div>
            </div>
            <div class="middle_top_right">
                <div class="ad" id="picBox">
                    <div class="loading"><img src="images/main/loading.gif" alt="图片加载中"></div>
                    <!--调用样式-->
                    <div class="pic">
                        <ul>
                            <li><img src="images/main/lunbo1.jpg" width="895" height="600"></li>
                            <li><img src="images/main/lunbo2.jpg" width="895" height="600"></li>

                        </ul>
                    </div>
                </div>

            </div>
        </div>
        <!--中间中间开始，展示旅游项目-->
        <div class="middle_middle">
            <!--第一个旅游项目-->
            <div class="middle_middle1">
                <div class="mm1_top">
                    <div class="mm_img">
                        <img src="images/main/chujing.png" width="210" height="57">
                    </div>
                    <div class="mm_nav">
                     <ul>
                        <li>
                            猜你喜欢
                        </li>
                        <li>
                            香港
                        </li>
                        <li>
                            台湾
                        </li>
                        <li>
                            日本
                        </li>
                        <li>
                            泰国
                        </li>
                        <li>
                            马尔代夫
                        </li>
                        <li>
                            美国
                        </li>
                        <li>
                            东南亚
                        </li>
                        <li>
                            澳新南太
                        </li>
                        <li>
                            美洲
                        </li>
                        <li>
                            中东非洲
                        </li>
                        <li>
                            欧洲
                        </li>

                     </ul>
                    </div>
                </div>
                <div class="mm1_middle">
                    <div class="mm1m_left">
                        <div class="mm1m_left_top">
                            <img src="images/main/chujing2.jpg" width="210" height="183">
                        </div>

                        <div class="mm1m_left_down">
                            <img src="images/main/chujing3.jpg"  width="210" height="363">
                        </div>
                    </div>
                    <div class="mm1m_right">
                      <div class="mm1m_right_top">
                          <div class="mm1m_right_top_left">
                            <div class="mm1m_right_top_left_center"><img src="images/tourism/t100.jpg" width="500px" height="280px"><br>
                                <a href="DetailServlet?tourism_id=10003" class="a_huanhang">&nbsp;&nbsp;&nbsp;泰国曼谷+芭堤雅+新加坡+马来西亚6日5晚跟团游【爸妈放心游·认准北中旅】全国联运+自助美食+双岛畅游+全民疯抢</a><br>
                               <span>&nbsp;&nbsp;￥3999起</span>
                            </div>
                          </div>

                          <div class="mm1m_right_top_right">
                              <div class="mm1mrtrt">
                                  <div class="mm1mrtrt_left">
                                      <div class="mm1mrtrt_left_center">
                                      <img src="images/tourism/t300.jpg" width="228px" height="115px"><br>
                                      <a href="DetailServlet?tourism_id=10021" class="a_huanhang2">&nbsp;&nbsp;&nbsp;&nbsp;皇家加勒比国际游轮·海洋航行者号6天5晚曼谷+曼谷</a><br>
                                      <span>&nbsp;&nbsp;&nbsp;&nbsp;￥3293起</span>
                                      </div>
                                  </div>
                                  <div class="mm1mrtrt_right">
                                      <div class="mm1mrtrt_left_center">
                                      <img src="images/tourism/t400.jpg" width="228px" height="115px"><br>
                                      <a href="DetailServlet?tourism_id=10022" class="a_huanhang2">&nbsp;&nbsp;&nbsp;&nbsp;曼谷暹罗海洋世界一日游曼谷暹罗海洋世界一日游</a><br>
                                      <span>&nbsp;&nbsp;&nbsp;&nbsp;￥100起</span>
                                      </div>
                                  </div>
                              </div>
                              <div class="mm1mrtrb">
                                  <div class="mm1mrtrt_left">
                                      <div class="mm1mrtrt_left_center">
                                          <img src="images/tourism/t500.jpg" width="228px" height="115px"><br>
                                          <a  href="DetailServlet?tourism_id=10024" class="a_huanhang2">&nbsp;&nbsp;&nbsp;&nbsp;曼谷杜莎夫人蜡像馆曼谷一次性近距离接触“名人政要”</a><br><br>
                                          <span>&nbsp;&nbsp;&nbsp;&nbsp;￥99起</span>
                                      </div>
                                  </div>
                                  <div class="mm1mrtrt_right">
                                      <div class="mm1mrtrt_left_center">
                                          <img src="images/main/tmain1.jpg" width="228px" height="115px"><br>
                                          <a  href="DetailServlet?tourism_id=10003" class="a_huanhang2">&nbsp;&nbsp;&nbsp;&nbsp;台湾环岛8日7晚半自助游(4钻)·垦丁1晚+台北3晚 涵盖必游精华景点 台北一日自由活动 品尝特色餐 放心纯玩</a><br>
                                          <span>&nbsp;&nbsp;&nbsp;&nbsp;￥7200起</span>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>

                      <div class="mm1m_right_bottom">
                          <div class="mm1mrtrt_left">
                              <div class="mm1mrtrt_left_center">
                                  <img src="images/main/tmain2.jpg" width="228px" height="115px"><br>
                                  <a  href="DetailServlet?tourism_id=10003" class="a_huanhang2">&nbsp;&nbsp;&nbsp;&nbsp;台湾环岛11日10晚私家团(5钻)·经典环岛 日月潭+阿里山+垦丁+太鲁阁一个不少 六合夜市+东大门夜市+士林夜市 三大夜市美食飨不停 台北3天自由活动</a><br>
                                  <span>&nbsp;&nbsp;&nbsp;&nbsp;￥13646起</span>
                              </div>
                          </div>
                          <div class="mm1mrtrt_left">
                              <div class="mm1mrtrt_left_center">
                                  <img src="images/main/tmain3.jpg" width="228px" height="115px"><br>
                                  <a  href="DetailServlet?tourism_id=10003" class="a_huanhang2">&nbsp;&nbsp;&nbsp;&nbsp;日本东京+富士河口湖町6日5晚私家团(4钻)·「湖景露天温泉赏富士山」Kachikachi登山缆车 河口湖天上山公园 米其林三星景点『久保田竹一美术馆』 浅草寺求签祈福+登东京天空之树晴空塔 东京1日私属时光</a><br>
                                  <span>&nbsp;&nbsp;&nbsp;&nbsp;￥9777起</span>
                              </div>
                          </div>
                          <div class="mm1mrtrt_left">
                              <div class="mm1mrtrt_left_center">
                                  <img src="images/main/tmain4.jpg" width="228px" height="115px"><br>
                                  <a  href="DetailServlet?tourism_id=10003" class="a_huanhang2">&nbsp;&nbsp;&nbsp;&nbsp;马尔代夫库拉玛提岛Kuramathi7日5晚自由行(4钻)·首晚马累+4晚岛上+全餐+拖尾沙滩+可升级水飞+高性价比热卖</a><br>
                                  <span>&nbsp;&nbsp;&nbsp;&nbsp;￥11128起</span>
                              </div>
                          </div>
                          <div class="mm1mrtrt_left">
                              <div class="mm1mrtrt_left_center">
                                  <img src="images/main/tmain5.jpg" width="228px" height="115px"><br>
                                  <a  href="DetailServlet?tourism_id=10003" class="a_huanhang2">&nbsp;&nbsp;&nbsp;&nbsp;美国东西海岸+夏威夷+纽约+华盛顿+洛杉矶市+拉斯维加斯14日跟团游·【放心游】直飞美国+全国联运+尼亚加拉大瀑布+【哈佛+麻省理工名校】+赠送波士顿龙虾每人一只</a><br>
                                  <span>&nbsp;&nbsp;&nbsp;&nbsp;￥14409起</span>
                              </div>
                          </div>

                      </div>

                    </div><!--mm1结束-->
                    <div class="xian"></div><!--分界线-->
                </div><!--第一个旅游middle_middle结束-->


            </div><!--第二个旅游结束-->

            <!--第二个旅游项目-->
            <div class="middle_middle1">
                <div class="mm2_top">
                    <div class="mm_img">
                        <img src="images/main/jingnei.png" width="210" height="57">
                    </div>
                    <div class="mm_nav">
                        <ul>
                            <li>
                                猜你喜欢
                            </li>
                            <li>
                                三亚
                            </li>
                            <li>
                                云南
                            </li>
                            <li>
                                厦门
                            </li>
                            <li>
                                广西
                            </li>
                            <li>
                                四川
                            </li>
                            <li>
                                北京
                            </li>
                            <li>
                                东北
                            </li>
                            <li>
                                西安
                            </li>
                            <li>
                                西北
                            </li>
                            <li>
                                长江三峡
                            </li>
                            <li>
                                西藏
                            </li>

                        </ul>
                    </div>
                </div>
                <div class="mm1_middle">
                    <div class="mm1m_left">
                        <div class="mm1m_left_top">
                            <img src="images/main/jingnei2.jpg" width="210" height="183">
                        </div>

                        <div class="mm1m_left_down">
                            <img src="images/main/jingnei3.jpg"  width="210" height="363">
                        </div>
                    </div>
                    <div class="mm1m_right">
                        <div class="mm1m_right_top">
                            <div class="mm1m_right_top_left">
                                <div class="mm1m_right_top_left_center"><img src="images/tourism/t200.jpg" width="500px" height="280px"><br>
                                    <a href="DetailServlet?tourism_id=10004" class="a_huanhang">&nbsp;&nbsp;&nbsp;海南三亚4日3晚跟团游 出游之冠 『三酒店任选+升级海南四大名菜』携程自营专属景区通道 100%纯玩0购物 明星线</a><br>
                                    <span>&nbsp;&nbsp;￥3225起</span>
                                </div>
                            </div>

                            <div class="mm1m_right_top_right">
                                <div class="mm1mrtrt">
                                    <div class="mm1mrtrt_left">
                                        <div class="mm1mrtrt_left_center">
                                            <img src="images/tourism/t600.jpg" width="228px" height="115px"><br>
                                            <a href="DetailServlet?tourism_id=10025" class="a_huanhang2">&nbsp;&nbsp;&nbsp;&nbsp;香港+澳门5日4晚半自助游·【推荐送上网卡】黄大仙祈福许愿+夜游维港+自由活动，A线：太平山顶+观光，B线：海洋公园+观光，C线：太平山顶观光+迪士尼，D线：海洋公园+迪士尼</a><br>
                                            <span>&nbsp;&nbsp;&nbsp;&nbsp;￥3087起</span>
                                        </div>
                                    </div>
                                    <div class="mm1mrtrt_right">
                                        <div class="mm1mrtrt_left_center">
                                            <img src="images/tourism/t700.jpg" width="228px" height="115px"><br>
                                            <a href="DetailServlet?tourism_id=10026" class="a_huanhang2">&nbsp;&nbsp;&nbsp;&nbsp;厦门+鼓浪屿+福建土楼5日4晚跟团游(4钻)·【初夏热推 明星导游】1晚岛上+特色下午茶 赠帆船出海 口碑臻纯玩</a><br>
                                            <span>&nbsp;&nbsp;&nbsp;&nbsp;￥1965起</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="mm1mrtrb">
                                    <div class="mm1mrtrt_left">
                                        <div class="mm1mrtrt_left_center">
                                            <img src="images/main/tmain6.jpg" width="228px" height="115px"><br>
                                            <a href="DetailServlet?tourism_id=10003" class="a_huanhang2">&nbsp;&nbsp;&nbsp;&nbsp;海南三亚5日4晚跟团游(5钻)·“万人好评”纯玩明星线了解一下？ 携程自营专属景区通道 『迎暑期四重豪礼』A线+1元升级180度海景房 每班20名额 限量抢购</a><br>
                                            <span>&nbsp;&nbsp;&nbsp;&nbsp;￥3025起</span>
                                        </div>
                                    </div>
                                    <div class="mm1mrtrt_right">
                                        <div class="mm1mrtrt_left_center">
                                            <img src="images/main/tmain7.jpg" width="228px" height="115px"><br>
                                            <a href="DetailServlet?tourism_id=10003" class="a_huanhang2">&nbsp;&nbsp;&nbsp;&nbsp;海南三亚6日5晚半自助游(5钻)·初夏美食季！超人气红树林 +1元换购亚马逊水乐园 升级四大名菜 100%纯玩 2天自由活动 错峰立减！</a><br>
                                            <span>&nbsp;&nbsp;&nbsp;&nbsp;￥2975起</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="mm1m_right_bottom">
                            <div class="mm1mrtrt_left">
                                <div class="mm1mrtrt_left_center">
                                    <img src="images/main/tmain8.jpg" width="228px" height="115px"><br>
                                    <a href="DetailServlet?tourism_id=10003" class="a_huanhang2">&nbsp;&nbsp;&nbsp;&nbsp;重庆+成都5日4晚跟团游(4钻)·【网红双城记】 渝进成出+赠武隆VIP一日 2地精选酒店 游魔幻山城 逛天府成都</a><br>
                                    <span>&nbsp;&nbsp;&nbsp;&nbsp;￥3164起</span>
                                </div>
                            </div>
                            <div class="mm1mrtrt_left">
                                <div class="mm1mrtrt_left_center">
                                    <img src="images/main/tmain9.jpg" width="228px" height="115px"><br>
                                    <a href="DetailServlet?tourism_id=10003" class="a_huanhang2">&nbsp;&nbsp;&nbsp;&nbsp;广西桂林+阳朔+漓江5日4晚跟团游(5钻)·【销量超2万】确保VIP头等舱游全江【官方自营 帝王之旅】销量傲视全站 双梯田+大公馆+高标椿记+金奖啤酒鱼</a><br>
                                    <span>&nbsp;&nbsp;&nbsp;&nbsp;￥3691起</span>
                                </div>
                            </div>
                            <div class="mm1mrtrt_left">
                                <div class="mm1mrtrt_left_center">
                                    <img src="images/main/tmain10.jpg" width="228px" height="115px"><br>
                                    <a href="DetailServlet?tourism_id=10003" class="a_huanhang2">&nbsp;&nbsp;&nbsp;&nbsp;北京5日4晚跟团游(4钻)·【绚丽春季·缤纷盛惠 】 高端商务酒店 赠孔庙国子监 含京味儿《功夫老炮儿》盛宴 精选导游配备无线导览耳机 含升旗仪式 赠防丢失手环 帝都放心游</a><br>
                                    <span>&nbsp;&nbsp;&nbsp;&nbsp;￥1163起</span>
                                </div>
                            </div>
                            <div class="mm1mrtrt_left">
                                <div class="mm1mrtrt_left_center">
                                    <img src="images/main/tmain11.jpg" width="228px" height="115px"><br>
                                    <a href="DetailServlet?tourism_id=10003" class="a_huanhang2">&nbsp;&nbsp;&nbsp;&nbsp;上海迪士尼（Disney）3日自由行·【酒店套餐】住迪士尼乐园酒店·自选1/2日票</a><br>
                                    <span>&nbsp;&nbsp;&nbsp;&nbsp;￥1842起</span>
                                </div>
                            </div>

                        </div>

                    </div>
                    <div class="xian"></div><!--分界线-->
                </div><!--第二个旅游middle_middle结束-->


            </div><!--第二个旅游结束-->
            <!--第三个旅游项目-->
            <div class="middle_middle3">
                <div class="mm3_top">
                    <div class="mm_img">
                        <img src="images/main/dangdi.png" width="210" height="57">
                    </div>
                    <div class="mm_nav">
                        <ul>
                            <li>
                               港澳台
                            </li>
                            <li>
                                泰国
                            </li>
                            <li>
                                东南亚
                            </li>
                            <li>
                                日本
                            </li>
                            <li>
                                欧美
                            </li>
                            <li>
                                澳新中东
                            </li>
                            <li>
                                三亚
                            </li>
                            <li>
                                云南
                            </li>
                            <li>
                                厦门
                            </li>
                            <li>
                                西安
                            </li>
                            <li>
                                北京
                            </li>
                            <li>
                                江浙沪
                            </li>

                        </ul>
                    </div>
                </div>
                <div class="mm3_middle">
                    <div class="mm3m_left">
                        <div class="mm3m_left_top">
                            <img src="images/main/dangdi2.jpg" width="210" height="183">
                        </div>

                        <div class="mm3m_left_down">
                            <img src="images/main/dangdi3.jpg"  width="210" height="181">
                        </div>
                    </div>
                    <div class="mm3m_right">
                        <div class="mm3m_right_bottom">
                            <div class="mm3mrtrt_left">
                                <div class="mm3mrtrt_left_center">
                                    <img src="images/main/tmain12.jpg" width="228px" height="115px"><br>
                                    <a href="DetailServlet?tourism_id=10003" class="a_huanhang2">&nbsp;&nbsp;&nbsp;&nbsp;云南丽江泸沽湖商务车精品小团纯玩一日游【不进摩梭家访+8-10人小团+进店退全款】</a><br>
                                    <span>&nbsp;&nbsp;&nbsp;&nbsp;￥336起</span>
                                </div>
                            </div>
                            <div class="mm3mrtrt_left">
                                <div class="mm3mrtrt_left_center">
                                    <img src="images/main/tmain13.jpg" width="228px" height="115px"><br>
                                    <a href="DetailServlet?tourism_id=10003" class="a_huanhang2">&nbsp;&nbsp;&nbsp;&nbsp;陕西西安秦始皇兵马俑博物馆+华清宫+骊山一日游【可订12人小团 赠手挖兵马俑 专线专导】</a><br>
                                    <span>&nbsp;&nbsp;&nbsp;&nbsp;￥235起</span>
                                </div>
                            </div>
                            <div class="mm3mrtrt_left">
                                <div class="mm3mrtrt_left_center">
                                    <img src="images/main/tmain14.jpg" width="228px" height="115px"><br>
                                    <a href="DetailServlet?tourism_id=10003" class="a_huanhang2">&nbsp;&nbsp;&nbsp;&nbsp;墨尔本绝美大洋路一日游,必去人气榜景点,十二门徒+阿波罗湾（可选观景直升机/短信凭证上车）</a><br>
                                    <span>&nbsp;&nbsp;&nbsp;&nbsp;￥214起</span>
                                </div>
                            </div>
                            <div class="mm3mrtrt_left">
                                <div class="mm3mrtrt_left_center">
                                    <img src="images/main/tmain15.jpg" width="228px" height="115px"><br>
                                    <a href="DetailServlet?tourism_id=10003" class="a_huanhang2">&nbsp;&nbsp;&nbsp;&nbsp;悉尼蓝山国家公园+落日游船一日游【14人小团/酒店接送/动物园亲密接触考拉】</a><br>
                                    <span>&nbsp;&nbsp;&nbsp;&nbsp;￥224起</span>
                                </div>
                            </div>

                        </div>


                        <div class="mm3m_right_top">
                            <div class="mm3mrtrt_left">
                                <div class="mm3mrtrt_left_center">
                                    <img src="images/main/tmain16.jpg" width="228px" height="115px"><br>
                                    <a href="DetailServlet?tourism_id=10003" class="a_huanhang2">&nbsp;&nbsp;&nbsp;&nbsp;杭州千岛湖景区+中心湖区游船+月光群岛+梅峰岛一日游【纯玩5个精华岛 市区免费接 登梅峰岛之巅】</a><br>
                                    <span>&nbsp;&nbsp;&nbsp;&nbsp;￥300起</span>
                                </div>
                            </div>
                            <div class="mm3mrtrt_left">
                                <div class="mm3mrtrt_left_center">
                                    <img src="images/main/tmain17.jpg" width="228px" height="115px"><br>
                                    <a href="DetailServlet?tourism_id=10003" class="a_huanhang2">&nbsp;&nbsp;&nbsp;&nbsp;都江堰景区+青城山一日游【你Like的私房菜，熊猫基地+都江堰VIP小团！】</a><br>
                                    <span>&nbsp;&nbsp;&nbsp;&nbsp;￥239起</span>
                                </div>
                            </div>
                            <div class="mm3mrtrt_left">
                                <div class="mm3mrtrt_left_center">
                                    <img src="images/main/tmain18.jpg" width="228px" height="115px"><br>
                                    <a href="DetailServlet?tourism_id=10003" class="a_huanhang2">&nbsp;&nbsp;&nbsp;&nbsp;成都大熊猫繁育研究基地+都江堰景区一日游【VIP小团出发晚+熊猫宴+无线耳麦+可选熊猫苑】</a><br>
                                    <span>&nbsp;&nbsp;&nbsp;&nbsp;￥208起</span>
                                </div>
                            </div>
                            <div class="mm3mrtrt_left">
                                <div class="mm3mrtrt_left_center">
                                    <img src="images/main/tmain19.jpg" width="228px" height="115px"><br>
                                    <a href="DetailServlet?tourism_id=10003" class="a_huanhang2">&nbsp;&nbsp;&nbsp;&nbsp;桂林漓江精华段竹筏漂流+银子岩+兴坪古镇+杨堤+九马画山一日游【真纯玩杨堤竹筏+商务小团可选】</a><br>
                                    <span>&nbsp;&nbsp;&nbsp;&nbsp;￥234起</span>
                                </div>
                            </div>

                        </div>

                    </div>
                    <div class="xian"></div><!--分界线-->
                </div><!--第三个旅游middle_middle结束-->


            </div><!--第三个旅游结束-->


        </div><!--middle结束-->

        <!--bottom开始-->
        <div class="bottom">
            <div class="bottom_top">
                <h1 style="font-weight: 400;font-size: 20px">目的地及景区合作</h1><br>
                <div class="bottom_top_out">
                    <ul>
                        <li>
                            <img src="images/main/supplier.jpg" width="110" height="85"><br>
                            <span>香港</span>
                        </li>

                        <li>
                            <img src="images/main/sg_logo.png" width="110" height="85"><br>
                            <span >韶关</span>
                        </li>
                        <li>
                            <img src="images/main/cxlogo.png" width="110" height="85"><br>
                            <span >美国橙县旅游</span>
                        </li>
                        <li>
                            <img src="images/main/supplier3.jpg" width="110" height="85"><br>
                            <span>舟山普陀</span>
                        </li>
                        <li>
                            <img src="images/main/supplier4.jpg" width="110" height="85"><br>
                            <span >最美苏州</span>
                        </li>
                        <li>
                            <img src="images/main/tb_logo8.png" width="110" height="85"><br>
                            <span >北京</span>
                        </li>
                        <li>
                            <img src="images/main/supplier5.jpg" width="110" height="85"><br>
                            <span>山东</span>
                        </li>
                    </ul>



                </div>
            </div>

            <div class="bottom_bottom">
                <img src="images/main/end.png" width="1300px" height="246px">
            </div>

        </div>


    </div>
</body>
</html>