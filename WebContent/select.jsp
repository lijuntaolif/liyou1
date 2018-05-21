<%@page import="java.util.ArrayList"%>
<%@page import="cn.liyou.pojo.Tourism"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询页</title>

    <style>
        /*head开始*/
        *{
            padding: 0;
            margin: 0 auto;

        }
        .head{
            width: 1500px;
            height: 40px;
            background: #38B2E2;
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
        /*head结束*/
        /*中间开始*/
        .middle{
            width: 1300px;
            height: auto;
            background-color: #CCCCCC;
            border-top: solid 2px #38B2E2;
        }
        .middle_top{
            width: 1300px;
            height: auto;

        }
        .middle_top1{
            width: 1300px;
            height: 49px;

            border-bottom: solid 1px #FFFFFF;


        }
        .middle_top2{
            width: 1300px;
            height: 49px;
			
            border-bottom: solid 1px #FFFFFF;


        }
       /**新的div**/
        .newaddDiv{
        	background-color: #53B9FB;
        	height:30px;
        	width:auto;
        	text-align: center;
        	line-height: 30px;
        	float: left;
        	margin-top: 10px;
        	color:white;
        }
       
        .middle_top3{
            width: 1300px;
            height: 49px;

            border-bottom: solid 1px #FFFFFF;
        }

        .middle_top span{
            line-height: 49px;
            font-weight: 500;
        }
        .middle_middle{
            width: 1300px;
            height: auto;
            min-height: 1000px;
        }
        .middle_middle_left{
            width: 1000px;
            height: auto;
            float: left;
            min-height: 1000px;

        }
        .middle_middle_right{
            width:  300px;
            height: auto;
            min-height: 1000px;
            float: right;

        }
        
        
        .tlist{
            width: 998px;
            height: 198px;
            border: solid 1px #D5D5D5;

            margin-top: 10px;
        }
        .tlist_left{
            width: 200px;
            height: 198px;

            float: left;
        }
        .tlist_right{
            width:778px ;
            height: 198px;
            float: right;


        }
        .tlist_right a{
            text-decoration: none;
            font-size: 17px;
            font-weight: 500;
            color: #0066CC;
            width:778px;
            word-break: break-all;
            text-overflow: ellipsis;
            display: -webkit-box; /** 将对象作为伸缩盒子模型显示 **/
            -webkit-box-orient: vertical; /** 设置或检索伸缩盒对象的子元素的排列方式 **/
            -webkit-line-clamp: 2; /** 显示的行数 **/
            overflow: hidden;  /** 隐藏超出的内容 **/
        }
        .tlist_right_info{
            width:778px ;
            height: 130px;

            float: left;

            border-top:solid 1px #EEEEEE;
            border-bottom:solid 1px #EEEEEE;
        }
        .tlist_right_left{
            width:530px ;
            height:130px ;
            float: left;
      

        }
        .tlist_right_left p{
        	width:530px;
            word-break: break-all;
            text-overflow: ellipsis;
            display: -webkit-box; /** 将对象作为伸缩盒子模型显示 **/
            -webkit-box-orient: vertical; /** 设置或检索伸缩盒对象的子元素的排列方式 **/
            -webkit-line-clamp: 1; /** 显示的行数 **/
            overflow: hidden;  /** 隐藏超出的内容 **/
        }
        .tlist_right_center{
            width: 128px;
            height: 130px;
            float: left;

        }
        .tlist_right_right{
            width: 120px;
            height: 130px;
            float: right;

        }
        .tlist_right_left p span{
            color: #D6D6D6;
        }

        .tlist_right_right span{
            color: red;

        }
        .choose_left{
            width: 82px;
            height: 49px;
            float: left;
        }
        .choose_right{
            width: 1200px;
            height: 49px;
            float: left;
            text-align: left;
            line-height: 49px;
            text-overflow: ellipsis;
            overflow: hidden;  /** 隐藏超出的内容 **/
        }
          .a_mouseover{
            color: blue;

        }
        /*中间结束*/

        /*bottom开始*/
        .bottom{
            width: 1300px;
            height: 600px;
            margin-top: 20px;


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



    </style>

    <script src="js/jquery-1.8.3.js" type="text/javascript"></script>
    <script type="text/javascript">
    window.onload=function (){

    	var position=$("#d_2span").text();
    	
    	if($.trim(position)==null||$.trim(position)==""||$.trim(position)=="null"){
    	
    		$("#d_2span").html("北京");
    	}

    }
        function checkMinMax(){
            var max=$("#maxprice").val();
            var min=$("#minprice").val();
            if(max!=null&&!isNaN(max)&&min!=null&&!isNaN(min)&&max>=min){
             return true;
            }else{
                alert("输入错误");
                return false;
            }
        };
        $(function(){

            $("a").mouseover(function(){
                $(this).addClass("a_mouseover");

            });
            $("a").mouseout(function(){
                $(this).removeClass("a_mouseover")
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
            $(".mmd_1 span").mouseover(function(){
                $(this).css("color","#38B2E2");
            });
            $(".mmd_1 span").mouseout(function(){
                $(this).css("color","black");
            });
            $(".middle_top1 input").click(function(){
                var val=$(this).val();
                var name=$(this).prevAll("span").text();
                var exatt1=$(this).attr("exatt1");
                var fation=$(this).attr("fation");
                
          		if(fation==1){
          			var input2=$("<input type='text' hidden  name='keys' value='"+exatt1+"'>");
          			$("#choose_no").prepend(input2);
          		}
          		if(fation==2){
          			var input2=$("<input type='text' hidden  name='departure' value='"+exatt1+"'>");
          			$("#choose_no").prepend(input2);
          		}
          		if(fation==3){
          			var input2=$("<input type='text' hidden name='supplier' value='"+exatt1+"'>");
          			$("#choose_no").prepend(input2);
          		}
                
                var input=$("<input type='button'  name='key' class='middle_top1Input' value='"+name+":"+val+"'>");
               
                $("#choose_no").prepend(input);
                
               
               
            });
            
            $(".mmd_1 span,.hotcity span span").click(function(){
                var position=$(this).html();
                $(".departure .d_2 span").html(position);
               	$("#position").val(position);
               	
               	$.ajax({
                    url : 'setPostion',
                    data : {
                        'position': position,
                         
                       
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

            
            
            //因为在初始加载之后添加input，所以标准点击事件不会绑定到动态添加的input。
            //live可以解决,通过 live() 方法附加的事件处理程序适用于匹配选择器的当前及未来的元素（比如由脚本创建的新元素）。
            $(".middle_top1Input").live("click",function(){
                $(this).remove();
            });

            $("#maxprice,#minprice").focus(function(){
                $("#hidinput").show();
            });
            $("#hidinput").click(function(){
                var max=$("#maxprice").val();
                var min=$("#minprice").val();
                var name=$(this).prevAll("span").text();
                if(checkMinMax()){
                    var input=$("<input type='button' class='middle_top1Input' value='"+name+":"+min+"~"+max+"'> &nbsp;&nbsp;&nbsp;");
                    var input2=$("<input type='text' hidden name='min' value='"+min+"'> &nbsp;&nbsp;&nbsp;");
                    var input3=$("<input type='text' hidden name='max' value='"+max+"'> &nbsp;&nbsp;&nbsp;");
                    
                    $("#choose_no").prepend(input);
                    $("#choose_no").prepend(input2);
                    $("#choose_no").prepend(input3);
                    $(this).hide();
                   	$(".middle_top3").hide();
                }

            });
            
            
            


        });
    </script>
</head>
<body>
<%
    String position=(String)request.getAttribute("position");
    %>
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
				
				<form action="selectServlet" method="post" id="form1">
				<input type="hidden" name="position" id="position" value="<%=session.getAttribute("position")%>">
                <input style="width: 300px ;height: 40px" name="conditions" type="text" placeholder="请输入目的地、主题或关键字">
                <input style="width: 100px ;height: 45px; background-color:#FD782A; color: white"  type="submit" value="搜   索" >
            	</form></div>

        </div>

    </div>

    <!--中间开始-->
    <form action="selectByInput" method="post" id="form2">
    <div class="middle">
        <!--条件结束-->
        <div class="middle_top">
        
            <div class="middle_top2">
           
                <div class="choose_left"><span id="chooses">已选择</span>
                </div>
                <div class="choose_right">
                    <div id="choose_no" style="float: left"><input id="inputsub" style="float:right" type="submit"  value="提    交"></div>
                    
                  	
                </div>
              
            </div>
       
           
                <div class="middle_top1">
                    <span>行程天数</span>&nbsp;&nbsp;&nbsp;
                    <input type="button" exatt1="days=1" fation="1" value="1日">&nbsp;&nbsp;&nbsp;
                    <input type="button" exatt1="days=2" fation="1" value="2日">&nbsp;&nbsp;&nbsp;
                    <input type="button" exatt1="days=3" fation="1" value="3日">&nbsp;&nbsp;&nbsp;
                    <input type="button" exatt1="days=4" fation="1" value="4日">&nbsp;&nbsp;&nbsp;
                    <input type="button" exatt1="days=5" fation="1" value="5日">&nbsp;&nbsp;&nbsp;
                    <input type="button" exatt1="days=6" fation="1" value="6日">&nbsp;&nbsp;&nbsp;
                    <input type="button" exatt1="days=7" fation="1" value="7日">&nbsp;&nbsp;&nbsp;
                    <input type="button" exatt1="days>7" fation="1" value=">7日">&nbsp;&nbsp;&nbsp;
                </div>
                 
                
                <div class="middle_top1">
                    <span>出发城市</span>&nbsp;&nbsp;&nbsp;
                    <input type="button" exatt1="departure like ,北京." fation="2" value="北京">&nbsp;&nbsp;&nbsp;
                    <input type="button" exatt1="departure like ,上海." fation="2" value="上海">&nbsp;&nbsp;&nbsp;
                    <input type="button" exatt1="departure like ,杭州." fation="2" value="杭州">&nbsp;&nbsp;&nbsp;
					<input type="button" exatt1="departure like ,天津." fation="2" value="天津">&nbsp;&nbsp;&nbsp;
					
                </div>
                <div class="middle_top1">
                    <span>供应商</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="button" exatt1="supplier=,离游自营," fation="3" value="离游自营" style="margin-left:2px">&nbsp;&nbsp;&nbsp;
                    <input type="button" exatt1="supplier=,北京中国旅,"  fation="3" value="北京中国旅">&nbsp;&nbsp;&nbsp;
                    <input type="button" exatt1="supplier=,香港旅游,"  fation="3" value="港澳风情">&nbsp;&nbsp;&nbsp;
                </div>
                <div class="middle_top3">
                    <span>价格区间</span>&nbsp;&nbsp;&nbsp;
                    <input id="minprice" type="text" placeholder="￥" style="width:50px" >
                    <lable>~</lable>
                    <input id="maxprice" type="text" placeholder="￥" style="width:50px">
                    <input id="hidinput" type="button" hidden value="提交">&nbsp;&nbsp;&nbsp;
                   
                </div>
            </div>
        </div>
        <!--条件结束-->
  </form> 
        <div class="middle_middle">
            <div class="middle_middle_left">
                
                <%
                	List<Tourism> list=new ArrayList<Tourism>();
                	list=(List<Tourism>)request.getAttribute("list");
                	
                	for(int i=0;i<list.size();i++){
                		Tourism tourism=list.get(i);
                		%>
                			<!--列表开始-->
                <div class="tlist">
                    <div class="tlist_left">
                        <img src="images/tourism/<%=tourism.getImages_name() %>" style="margin-top: 10px" width="200" height="150">

                        <div style="width: auto;height: 20px;color: white;background-color: red ;float: left">
                            <span><%=tourism.getFashion() %></span>
                        </div>
                    </div>
                    <div class="tlist_right" >
                        <a href="DetailServlet?tourism_id=<%=tourism.getTourism_id() %>"><%=tourism.getTourism_name() %></a>
                        <div class="tlist_right_info">
                            <div class="tlist_right_left">
                                <br>

                                <p style="color: green">出发地：<%=tourism.getDeparture() %></p>
                                <p>介&nbsp;&nbsp;&nbsp;绍：<%=tourism.getSmessage()%></p>
                                <span>班&nbsp;&nbsp;&nbsp;期：<%=tourism.getFirstday()%>~<%=tourism.getLastday()%></span>
                                <input  type="date" value="2018-05-04"  min="2018-05-04" max="2018-05-26">
                                <p>供应商：<%=tourism.getSupplier() %> <span>并提供咨询/预订/售后服务</span></p>
                            </div>
                            <div class="tlist_right_center"></div>
                            <div class="tlist_right_right">
                                <br><br><br>
                                <span >￥<%=tourism.getDiscountprice() %></span>
                            </div>

                        </div>
                    </div>
                </div>
                <!--列表结束-->
                		
                		<%
                	}
                %>
                
            </div>
            <div class="middle_middle_right">
                <img src="images/select/tlist.jpg" width="300px">
                <img src="images/select/tlist2.jpg" width="300px">
            </div>


        </div>

    </div>
    <!--中间结束-->

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




</body>
</html>