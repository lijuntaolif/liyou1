<%@page import="cn.liyou.pojo.Route"%>
<%@page import="java.util.List"%>
<%@page import="cn.liyou.pojo.Tourism"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <script src="js/jquery-1.8.3.js"></script>
    <script src="js/mag.js"></script>

    <script>
        $(function() {
            /*
             show  //正常状态的框
             bigshow   // 放大的框的盒子
             smallshow  //缩小版的框
             mask   //放大的区域（黑色遮罩）
             bigitem  //放大的框
             */
            var obj = new mag('.show', '.bigshow', '.smallshow', '.mask', '.bigitem');
            obj.init();
        });
    </script>
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

        /*head结束*/

        /*插件开始*/
        ul,li{list-style: none;margin:0;padding:0;}
        .bg{width:1300px;height: 540px;margin:0 auto;padding:20px;border:1px solid #E8E8E8;overflow: hidden;min-width: 900px;box-sizing: border-box;background: #fff;}
        .bg_left{width: 550px;height:auto;float: left}
        .bg_right{float: left}
        .show{width: 550px;height: 430px;margin-bottom: 10px;position: relative;border:1px solid #E8E8E8;cursor:move}
        .show img{width: 550px;height: 430px;}
        .mask{width: 330px;height: 215px;background: #000;filter: Alpha(opacity=50);opacity:0.5;position: absolute;top: 0;left: 0;display: none;}
        .bigshow{position:absolute;z-index:1;top:127px;left:698px;width: 430px;height: 430px;overflow: hidden;margin-left: 10px;display: none;border:1px solid #E8E8E8;}
        .bigshow img{width: 860px;height: 860px;margin-right: 10px;}
        .smallshow{width: 100%;height: 70px;position: relative}
        .smallshow img{width:100%;border:1px solid #e8e8e8;box-sizing: border-box;transition: all 0.5s}
        .smallshow>.middle_box{margin-left: 30px;margin-right: 30px;width:500px;overflow: hidden;height: 70px;}
        .smallshow .middle{overflow: hidden;transition: all 0.5s;height: 70px;}
        .smallshow .middle>li{width: 90px;height: 45px;float: left;cursor:pointer;padding:0 5px;}
        .smallshow>p{position: absolute;top:50%;width: 22px;height: 32px;margin-top: -16px;}
        .smallshow>.prev{left: 0;background: url(images/chajian/hover-prev.png) no-repeat;transition: all 0.5s}
        .smallshow>.next{right: 0;background: url(images/chajian/hover-next.png) no-repeat;transition: all 0.5s}
        .smallshow>.prev.prevnone{left: 0;background: url(images/chajian/prev.png) no-repeat;cursor: not-allowed}
        .smallshow>.next.nextnone{right: 0;background: url(images/chajian/next.png) no-repeat;cursor: not-allowed}
        /*插件结束*/

        .bg_my{
            width: 700px;
            height: 500px;

        }
        .bg_my_left{
            width: 20px;
            height: 500px;

            float: left;
        }
        .bg_my_right{
            width: 680px;
            height: 500px;

            float: right;
        }

        .bg_my_right_head_top{
            margin-top: 10px;
            width: 680px;
            height: 17px;
            font-size: 13px;
            color: #666666;
        }
        .bg_my_right_head_b{
            width: 680px;
            height: 1px;

            margin-top: 10px;
        }
        .bg_my_right_head_top_left{
            width: 200px;
            height: 17px;
            line-height:17px;
            float: left;
            border-right: solid 1px #DDDDDD;
        }
        .bg_my_right_head_top_right{
            width: auto;
            height: 17px;
            line-height: 17px;
            margin-left: 40px;
            float: left;
        }
        .bg_my_left_name{
            margin-top: 10px;
            width: 680px;
            height: auto;
            font-size: 18px;
            font-weight: 400;
        }
        .bg_my_left_massage{
            margin-top: 10px;
            width: 680px;
            height: 270px;
            background-color:#FFF9ED ;
        }
        .bg_my_left_massage_1{
            width: 680px;
            height: 30px;

        }
        .bg_my_left_massage_1_left{
            width: 300px;
            height:30px ;

            float: left;
            line-height: 30px;

        }
        .bg_my_left_massage_1_left span{
            color: #D6D6D6;
        }
        .bg_my_left_massage_1_right{
            width: 300px;
            height:30px ;

            float: left;
            line-height: 30px;


        }
        .bg_my_left_massage_1_right label{
            font-size: 18px;
            color: #FF6A00;
        }
        .bg_my_left_massage_2{
            margin-top: 5px;
            font-size: 15px;
            width: 680px;
            height: 20px;

            color: #666666;
        }
        .bg_my_left_massage_2_left{
            width: 100px;
            height:20px ;

            float: left;
            line-height: 20px;
           font-weight: 600;


        }
        .bg_my_left_massage_2_right{
            width: auto;
            height:20px ;
            margin-left: 20px;

            float: left;
            line-height: 20px;
            border-radius: 3px;
            background-color: #F8F8F8;



        }
        .bg_my_left_massage_3_right{
            width: 500px;
            height:20px ;
            margin-left: 20px;
			
            float: left;
            line-height: 20px;
 			word-break: break-all;
            text-overflow: ellipsis;
            display: -webkit-box; /** 将对象作为伸缩盒子模型显示 **/
            -webkit-box-orient: vertical; /** 设置或检索伸缩盒对象的子元素的排列方式 **/
            -webkit-line-clamp: 1; /** 显示的行数 **/
            overflow: hidden;  /** 隐藏超出的内容 **/
			



        }
        .bg_my_left_massage_buy{
            width: 676px;
            height: 100px;
            margin-top: 5px;
            border: 2px solid #FFB346;
        }
        .bg_my_left_massage_buy_left{
            width: 500px;
            height: 60px;
            line-height: 60px;
            float: left;
        }
        .bg_my_left_massage_buy_left span{
            font-weight: 600;
        }
        .bg_my_left_massage_buy_right{
            width:176px;
            height: 60px;
            line-height: 60px;
            float: left;
            font-size: 10px;
            color:  #D6D6D6;
        }
        .bg_my_left_massage_buy_right span{
            color: #FF6600;
            font-size: 20px;
            font-weight: 500;
        }

        .buyDiv{
               width:500px;
               height:90px;

               margin-top:50px;
        }
        .buyLink{
            width:250px;
            height:90px;
            float:left;

        }
        .addCartLink{
            width:250px;
            height:90px;
            margin-bottom: 1px;
            float:left;
        }
        /*购买按钮*/
        #buyButton {
            border: 1px solid #C40000;
            width:150px;
            background-color: #FFEDED;
            text-align: center;
            line-height: 40px;
            font-size: 16px;
            color: #C40000;
            font-family: arial, '宋体', \5b8b\4f53, sans-serif;
            margin-top:20px;


        }

        /*加入收藏*/
        #addCartButton {
            width:150px;

            border: 1px solid #C40000;
            background-color: #C40000;
            text-align: center;
            line-height: 40px;
            font-size: 16px;
            margin-top:20px;


            margin-left:100px;
            color: white;
            font-family: arial, '宋体', \5b8b\4f53, sans-serif;
        }
        #addCartButton2 {
            width:150px;

            border: 1px solid #C40000;
            background-color: #C40000;
            text-align: center;
            line-height: 40px;
            font-size: 16px;
            margin-top:20px;


            margin-left:100px;
            color: white;
            font-family: arial, '宋体', \5b8b\4f53, sans-serif;
        }
        #addCartButton a{
            text-decoration:none;
            color: white;
            font-family: arial, '宋体', \5b8b\4f53, sans-serif;
        }
        .introduce_head{
            width: 1300px;
            height: 30px;

            margin-top: 20px;
            text-align: center;
            line-height: 32px;
            color:#666666;

        }
        .introduce_head_left{
            width: 80px;
            float: left;
            height: 28px;
            border-left: 1px solid #D5D5D5;
            border-top: 1px solid #D5D5D5;

        }
        .introduce_head_center{
            width: 65px;
            float: left;
            height: 28px;
            border-left: 1px solid #D5D5D5;
            border-top: 1px solid #D5D5D5;
            border-bottom: 1px solid #D5D5D5;
        }
        .introduce_head_right{
            width: 80px;
            float: left;
            height:28px;

            border-left: 1px solid #D5D5D5;
            border-top: 1px solid #D5D5D5;
            border-bottom: 1px solid #D5D5D5;
            border-right: 1px solid #D5D5D5;
        }
        .introduce{
            width: 1300px;
            height: auto;
            border:1px solid #D5D5D5 ;
            text-align: center;
            font-size: 14px;
        }
        .introduce_left{
            width:1px;
            height: auto;
            float: left;
        }
        .introduce_j_out{
            width: 1300px;
            height: auto;
        }
        .introduce_j{
            width: 1000px;
            height: auto;
            border: 1px solid #D5D5D5;
            margin-top: 20px;
        }
        .introduce_day{
            width: 1000px;
            height: 30px;
            background-color: #F7F7F7;
            border-bottom:1px solid #D5D5D5 ;
            text-align: left;
            font-weight: 400;
            font-size: 20px;
        }
        .introduce_time{
            width: 500px;
            height: auto;
            text-align: left;
            word-wrap: break-word;
        }
        .introduce_xian{
            width: 1200px;
            height: 2px;
            background-color: #F1F1F1;
            margin-top: 20px;
        }
        .introduce_pay{
            width: 1300px;
            height: 280px;
            margin-top: 10px;

        }
        .introduce_pay_left{
            width: 100px;
            height: auto;
            float: left;
            text-align: left;
        }
        .introduce_pay_right{
            width: 1000px;
            height:250px;
            margin-left: 50px;
            float: left;

            margin-top: 20px;
            text-align: left;
        }
        .introduce_pay_right h1{
            margin-top: 10px;
            font-size: 16px;
            font-weight: 600;
        }
        .introduce_shodknow{
            width: 1300px;
            height: 800px;
            margin-top: 10px;
        }

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
        function checkInputMen(){
            var men=$("#men").val();
            var stock=$("#stock").text();
            var children=$("#children").val();
            var flag=false;
            if(men==null||isNaN(men)){
                alert("成人输入错误");
                flag=false;
            }else{
                flag=true;
            }
            return flag;
        };
        function checkInputChildren(){
        	 var men=$("#men").val();
             var stock=$("#stock").text();
            var children=$("#children").val();
            var flag=false;
            if(children==null||isNaN(children)){
                alert("儿童输入错误");
                flag=false;
            }else{
               flag=true;
            }
            return flag;
        };
        
        function syncpay(){
            var price=$("#pay").text();
            var men=$("#men").val();
            var children=$("#children").val();

            var pay=men*price+children*price/2;
            $("#totlepay").html(pay);
        };
        function checksubmit(){
            var toltalpay=$("#totlepay").text();
            if(toltalpay!=null&&toltalpay!=0){
               
                return true;
            }else{
            	return false;
            }
        }
        function checkDate(){
        	var date=$("#date").val();
        	if(date==""){
        		alert("请选择出发日期！！！");
        		return false;
        	}else{
        		return true;
        	}
        }

        $(function(){
            $("#men").blur(function(){
                var i=checkInputMen();
                if(i){
                    syncpay();
                }
            });
            $("#children").blur(function(){
                var i=checkInputChildren();
                if(i){
                    syncpay();
                }
            });
            /**点击**/
            $("#buyButton").click(function(){
            		if(checksubmit()&&checkDate()){
            			var tourism_id=$("#tourism_id").val();
            			var date=$("#date").val();
            			var men=$("#men").val();
            			var children=$("#children").val();
            			var toltalpay=$("#totlepay").text();
            			var user_id=$("#user_id").val();
            		
            			
            			$.ajax({
                            url : 'formcommit',
                            data : {
                                'tourism_id': tourism_id,
                                'date' : date,
                                'men' : men,
                                'children' : children,
                                'toltalpay' : toltalpay,
                                'user_id' : user_id
                               
                            },
                            type : 'post',
                            async : false,
                            success : function(result) {
                                if ($.trim(result) == "true") {
                                    alert("购买成功，可在我的订单中查看信息");
                                } else {
                                    alert("购买失败");
                                    
                                }
                            },
                            error : function() {
                                alert("ajax执行失败");
                                flag = false;
                            }
                        })
            		}
                    
            });
            /**点击收藏**/
            $("#addCartButton").click(function(){
        		
        			var tourism_id=$("#tourism_id").val();
        		
        			var user_id=$("#user_id").val();
        		
        			
        			$.ajax({
                        url : 'collection',
                        data : {
                            'tourism_id': tourism_id,
                             'user_id' : user_id
                           
                        },
                        type : 'post',
                        async : false,
                        success : function(result) {
                            if($.trim(result) == "1"){
                                alert("添加收藏成功");
                            }else if($.trim(result) == "3"){
                                alert("此项目已在收藏列表中");
                                
                            }else{
                            	alert("添加收藏失败");
                            }
                        },
                        error : function() {
                            alert("ajax执行失败");
                            flag = false;
                        }
                    })
        		
                
        });
        });
    </script>

</head>

<body>
<%
	Tourism tourism=(Tourism)request.getAttribute("tourism");
	List<String> list1=(List<String>)request.getAttribute("list1");
	List<String> list2=(List<String>)request.getAttribute("list2");
	List<Route> list3=(List<Route>)request.getAttribute("list3");
	
%>
<input type="hidden" id="tourism_id" value="<%=tourism.getTourism_id()%>">
<% Integer user_id=(Integer)session.getAttribute("user_id"); %>
<input type="hidden" id="user_id" value="<%=user_id%>">
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
                <a href="form.jsp">订单</a>
            </li>
            <li>
                <a href="collection.jsp">收藏</a>
            </li>
            <li>
                <%
           		String user_name=(String)session.getAttribute("user_name");
           		if(user_name!=null){
           			%>用户&nbsp;<%=user_name %>&nbsp;你好<%
           		}else{
           			%> <a href="login.jsp">登录</a>/<a href="register.jsp">注册</a><%
           		}
           		 %></li>
        </ul>
    </nav>

</div>

    <!--引入插件-->
    <div class="bg">
        <div class="bg_left">
            <div class="show">
                <img src="images/tourism/<%=list1.get(0) %>" alt="">
                <div class="mask"></div>
            </div>
            <div class="smallshow">
                <p class="prev prevnone"></p>
                <div class="middle_box">
                    <ul class="middle">
						<%for(int i=0;i<list1.size();i++){
								%><li><img src="images/tourism/<%=list1.get(i) %>" alt=""></li><%
						}
						
						%>
                     
                    </ul>
                </div>
                <p class="next "></p>
            </div>
        </div>
        <div class="bg_right">
            <div class="bg_my"  >
                <div class="bg_my_left">

                </div>
                <div class="bg_my_right">
                    <div class="bg_my_right_head">
                        <div class="bg_my_right_head_top">
                            <div class="bg_my_right_head_top_left">
                                <span>编号:&nbsp;<%=tourism.getTourism_id() %></span>
                            </div>
                            <div class="bg_my_right_head_top_right">
                                <span>出发地:&nbsp;<%=tourism.getDeparture() %></span>
                            </div>
                        </div>
                        <div class="bg_my_right_head_b" >

                        </div>
                    </div>
                    <div class="bg_my_left_name">
                        <span>
                           
                               <%=tourism.getTourism_name() %>    
                                        
                        </span>
                    </div>
                    <div class="bg_my_left_massage">
                        <div class="bg_my_left_massage_1">
                            <div class="bg_my_left_massage_1_left">原价:<span>￥<%=tourism.getPrice() %></span>/人</div>
                            <div class="bg_my_left_massage_1_right">现价:<label>￥<span id="pay"><%=tourism.getDiscountprice()%></span></label>/人</div>

                        </div>
                        <div class="bg_my_left_massage_1">
                            <div class="bg_my_left_massage_1_left">出游人数:132人</div>
                            <div class="bg_my_left_massage_1_right">出游天数:<%=tourism.getDays() %>天</div>

                        </div>
                        <div class="bg_my_left_massage_2">
                            <div class="bg_my_left_massage_2_left">产品特色</div>
                            <div class="bg_my_left_massage_2_right"><%=tourism.getSpecial() %></div>

                        </div>
                        <div class="bg_my_left_massage_2">
                            <div class="bg_my_left_massage_2_left">服务保障</div>
                            <div class="bg_my_left_massage_3_right">无购物、无自费</div>

                        </div>
                        <div class="bg_my_left_massage_2">
                            <div class="bg_my_left_massage_2_left">供 应 商</div>
                            <div class="bg_my_left_massage_3_right"><%=tourism.getSupplier() %></div>

                        </div>
                        <div class="bg_my_left_massage_2">
                            <div class="bg_my_left_massage_2_left">景点概要</div>
                            <div class="bg_my_left_massage_3_right"><%=tourism.getViews() %></div>

                        </div>
                        
                        <div class="bg_my_left_massage_buy">
                            <div class="bg_my_left_massage_buy_left">
                                <span>出发 </span><input id="date" type="date" value="2018-5-4" min="<%=tourism.getFirstday() %>" max="<%=tourism.getLastday() %>">&nbsp;&nbsp;
                                <span>成人 </span><input id="men" name="men" placeholder="请输入"style="width: 40px">
                                <span>儿童 </span><input id="children" name="children" placeholder="请输入"style="width: 40px"><label style="font-size: 10px; color: #9F9F9E">儿童半价</label>
                                <span >库存<lable id="stock"><%=tourism.getStock() %></lable >人</span>

                            </div>
                            <div class="bg_my_left_massage_buy_right">
                                总价 <span>￥<span id="totlepay">0</span></span>

                            </div>

                        </div>
                    </div>

                    <div class="buyDiv">
                        
					<%
						if(session.getAttribute("user_name")!=null){
							%>
								<div class="buyLink">
                        
                            		<input type="submit" id="buyButton" value="立即预订">
                        		</div>
                        	<%
						}else{
							%>
								<a href="login.jsp">
									<div class="buyLink">
                      
                            			<input type="submit" id="buyButton" value="立即预订">
                        			</div>
								</a>
								
							<%
						}
					%>
                        <div class="addCartLink">
                        <%
                       		 if(session.getAttribute("user_name")!=null){
                       			 %>
                       			 <button id="addCartButton">
                            		<a>
                               	 		<span class="glyphicon glyphicon-shopping-cart"></span>加入收藏
                            		</a>
                        		</button>
                        		<%
                       			 
                       		 }else{
                       			 %>
                       			 <a href="login.jsp">
                       			 <button id="addCartButton2">
                            		
                               	 		<span class="glyphicon glyphicon-shopping-cart"></span>加入收藏
                            		
                        		</button>
                        		</a>
                        		<%
                       		 }
                        %>
							
                        </div>
                    </div>

                </div>
            </div>
            <div class="bigshow">
                <div class="bigitem">
                    <img src="images/chajian/img1.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <!--插件结束-->
    <!--产品介绍开始-->
        <div class="introduce_head">
            <div class="introduce_head_left">行程介绍</div>
            <div class="introduce_head_center">费用</div>
            <div class="introduce_head_right">预定须知</div>
        </div>

        <div class="introduce">
            <div class="introduce_left">
                <br>
                <img src="images/main/introduce2.png">

            </div>

            <br>
            <% for(int i=0;i<list2.size();i++){
            	%>
            	<img src="images/tourism/<%=list2.get(i) %>" >
            	<%
            	
            } %>
            

            <div class="introduce_j_out">
            <%
            	for(int i=0;i<list3.size();i++){
            		Route route=list3.get(i);
            		%>
            			 <div class="introduce_j">
                <div class="introduce_day">
                    第<%=route.getDay() %>天&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=route.getPlace() %>
                </div>
                <div class="introduce_time">

                  <%=route.getArrange() %>
                </div>

            </div>
            		<%
            	}
            %>
           

            </div>

            <div class="introduce_xian">

            </div>
            <div class="introduce_pay">
                <div class="introduce_pay_left">
                    <br>
                    <img src="images/main/introduce3.png">
                </div>
                <div class="introduce_pay_right">
                    <h1>费用包含</h1>
                    <p>
                        1. 往返高铁二等座火车票
                    </p>
                    <p>
                        2. 行程所列酒店住宿费用
                    </p>
                    <p>
                        3.  酒店标准2人间
                    </p>
                    <p>
                        4. 行程内所列餐食，具体情况请见行程推荐/安排。

                    </p>
                    <p>
                        5. 当地中文导游服务。
                    </p>
                    <p>
                        6. 儿童价特殊说明：1.5米以下儿童，只含旅游车费、正餐费、导游服务费
                    </p>
                    <h1>费用自理</h1>
                    <p>
                        1. 儿童价不含往返火车票。<br>
                        2. 因景区儿童标准不一样，儿童价不含景区门票费用，如产生儿童门票费用，游客可自行到景区购买门票或由导游代为购买。<br>
                        3. 不包含景区内小交通、缆车、游船等费用。
                    </p>

                </div>

            </div>
            <div class="introduce_xian">

            </div>
            <div class="introduce_shodknow">
                <div class="introduce_pay_left">
                    <br>
                    <img src="images/main/introduce4.png">

                </div>
                <div class="introduce_pay_right">
                    <h1>预定限制</h1>
                    <p>
                        1. 本产品不接受75岁以上(含)客人预订，敬请原谅。<br>
                        2. 18岁以下未成年人需要至少一名家长或成年旅客全程陪同。<br>
                        3. 65周岁（含）以上老年人预订出行需确保身体健康适宜旅游，并有18周岁以上家属或朋友（因服务能力所限无法接待及限制接待的人除外）全程陪同出行。<br>
                        4. 出于安全考虑，本产品不接受孕妇预订，敬请谅解。<br>
                        5. 报价是按照2人入住1间房计算的价格，如您的订单产生单房，携程商家将安排您与其他客人拼房入住。如您要求享受单房，请在后续附加产品页面中选择单人房差选项。如您为2位成人+1位儿童入住1间房（儿童不占床）， 请勾选“儿童不占床早餐”选项; 如您为1位成人+1位儿童入住1间房，则视为儿童占床，本团不接受拼房，请勾选单房差。
                    </p>
                    <h1>预定说明</h1>
                    <p>
                        1. 铁道部规定所有火车票均需通过12306网站上进行身份核验，通过核验后方可购票。携程特别提醒您注意，出行人应确保其提供的身份证号及姓名真实有效且能够通过核验，若造成核验无法通过的，携程商家除全额退还订单费用外，不再承担其他责任；如因出行人提供虚假信息导致无法出票或车票无法正常使用，因此产生的损失应由出行人承担。<br>
                        请您在预订时务必提供准确、完整的信息（姓名、性别、证件号码、国籍、联系方式、是否成人或儿童等），以免产生预订错误，影响出行。如因客人提供错误个人信息而造成损失，应由客人自行承担因此产生的全部损失。<br>
                        我司为您提供的是火车票实名制客票，故请在提交订单时务必提供完整的身份信息（目前仅接受中华人民共和国居民二代身份证、港澳居民来往内地通行证、台湾居民来往大陆通行证和护照四种证件）。<br>
                        铁道部规定实名制车票办理退票和签转时，必须保证票（火车票）证（身份证原件）一致方可办理。故订单成交后，如需退订，请按以下条款执行:<br>
                        2. 如果电子客票未换取纸制票，请及时联系我司，由我司为您办理火车票退改签手续，同时根据预订须知条款收取相应的业务损失费用。<br>
                        3. 如果电子客票已经换取纸制票，请您自行前往火车站售票窗口办理火车票退改签手续，并将退票凭证原件或复印件提供给我司，我司将在核实退票款到帐后的7-14个工作日内将火车票退票款退还给您，同时根据预订须知条款收取相应的业务损失费用。<br>
                        4. 如您收到了携程或携程合作商寄送给您的纸质车票，请您自行前往火车站售票窗口办理火车票退改签手续，我们将在订单退订金额中扣除火车票相应费用。具体退订规则参考铁路部门相关退票规定。<br>
                    </p>
                    <h1>产品说明</h1>
                    <p>
                        1. 本产品最少成团人数1人，产品成功预订后均默认成团，若因我司原因未成团（除不可抗力外），旅行社将按双方合同约定的违约条款予以赔付。<br>
                        2. 本线路为散客拼团，在承诺服务内容和标准不变的前提下 ，可能会与其他旅行社的客人合并用车，共同游玩。如您提交订单，则视为接受旅行社拼团后统一安排行程。<br>
                        3. 本产品行程实际出行中，在不减少景点且征得客人同意的前提下，导游、司机可能会根据天气、交通等情况，对您的行程进行适当调整（如调整景点游览顺序等），以确保行程顺利进行。如因不可抗力等因素确实无法执行原行程计划，对于因此而造成的费用变更，我社实行多退少补，敬请配合。<br>
                        4. 出游过程中，如遇不可抗力因素造成景点未能正常游玩，导游经与客人协商后可根据实际情况取消或更换该景点，或由导游在现场按旅游产品中的门票价退还费用，退费不以景区挂牌价为准，敬请谅解。<br>
                        5. 如遇路况原因等突发情况需要变更各集合时间的，届时以导游或随车人员公布为准。<br>
                        6. 赠送项目，景区有权依自身承载能力以及天气因素等原因决定是否提供，客人亦可有权选择参加或者不参加。<br>
                        7. 团队行程中，非自由活动期间，如您选择中途离团，未完成部分将被视为您自行放弃，未完成但已实际产生损失的行程，不退任何费用。回程机（车）票仍可使用，请自行赴机场（车站）返回。<br>
                        8. 本产品会在当地由导游根据具体情况推荐自费项目，一般为套餐形式，您可根据自身需要选择是否参加，绝无强制消费。<br>
                        9. 该目的地区域内多数酒店不提供一次性洗漱用品，请客人自带备用，敬请配合！<br>
                        10. 本产品火车票无法指定铺位、座席，均为随机分配，不能保证连号。车票按实际出票为准，不补退差价。如对铺位、席位有特殊要求，请您上车后自行与其他旅客或乘务人员协调解决，敬请谅解。<br>
                        11. 行程有售卖当地特色产品的购物店，请配合团进团出，不强制购物，请您谨慎消费，保留好票据。<br>
                    </p>
                </div>
            </div>

        </div>
    <!--产品介绍结束-->

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