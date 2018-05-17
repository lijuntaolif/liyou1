<%@page import="java.util.ArrayList"%>
<%@page import="cn.liyou.pojo.Tourism"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>收藏页</title>

    <style>
        *{
            margin: 0 auto;
            padding: 0;
        }
        .middle{
            width: 1300px;
            height:500px;

            border: solid 1px #FFFFFF;
            margin-top: 50px;
        }
        .middle_head{
            width: 1200px;
            height: 40px;
            border-bottom: solid 1px #F2F2F2;
        }
        .middle_head1{
            width: 80px;
            background-color: red;
            height: 25px;
            float: left;
            line-height: 25px;
            text-align: center;
            color: white;
        }
        .middle_middle{
            width:1200px;
            height: auto;
        }
        .middle_message{
            margin-top: 20px;
            width:278px ;
            height: 327px;
            border: solid 1px  #F2F2F2;
            float: left;
            margin-left: 20px;
        }
        .middle_message_image{
            margin-top: 15px;
            width: 250px;
            height: 170px;
        }
        .middle_message_name{
            margin-top: 5px;
            width: 260px;
            height: 50px;
            font-size: 13px;
            text-align: center;


        }
        .middle_message_name a{
            text-decoration: none;
            color: black;
        }

        .middle_message_time{
            margin-top: 5px;
            width: 278px;
            height: 40px;
            border-top: 1px solid #EEEEEE;
            border-bottom: 1px solid #EEEEEE;


        }
        .middle_message_time_left{
            margin-top: 10px;
            width: 130px;
            height: 20px;
            float: left;
            text-align: center;
            border-right: 1px solid #EEEEEE;
        }
        .middle_message_time_right{
            margin-top: 10px;
            width: 128px;
            height: 20px;
            float: left;
            text-align: center;
            color: red;

        }
        .middle_bottom{
            width: 278px;
            height: 40px;
            background-color: #F9F9F9;

        }
        .middle_bottom_left{
            width: 130px;
            height: 40px;
            border-right: 1px solid #EEEEEE;
            float: left;
            line-height: 40px;
            text-align: center;
            color:#666666;
        }
        .middle_bottom a{
            text-decoration: none;
            color:#666666;
        }
        .middle_bottom_right{
            width: 147px;
            height: 40px;

            float: left;
            line-height: 40px;
            text-align: center;
            color:#666666 ;



        }
        .intro{
        background-color:red;
        }

    </style>
    <script src="js/jquery-1.8.3.js"></script>
    <script type="text/javascript">
        $(function(){
            $(".middle_message").mouseover(function(){
                $(this).css({"background-color":"#87bce2"});
                $(this).children().next().next().next().css({"background-color":"#87bce2"});
            });
            $(".middle_message").mouseout(function(){
                $(this).css("background-color","white");
                $(this).children().next().next().next().css({"background-color":"#F9F9F9"});
            });
            $(".middle_bottom_left,.middle_bottom_right").mouseover(function(){
                $(this).addClass("intro");

            });
            $(".middle_bottom_left,.middle_bottom_right").mouseout(function(){
                $(this).removeClass("intro");

            });
            $(".middle_message_name a").mouseover(function(){
                $(this).css({"color":"red","text-decoration":"underline"});
            });
            $(".middle_message_name a").mouseout(function(){
                $(this).css({"color":"black","text-decoration":"none"});
            });
        });


    </script>
</head>
<body>
	<%
		List<Tourism> list=new ArrayList<Tourism>();
		list=(List<Tourism>)request.getAttribute("tlist");
	
	%>
    <div class="middle">



            <div class="middle_head">
                <div class="middle_head1">
                    全部收藏
                </div>
            </div>
            <div class="middle_middle">
            <%
            	for(int i=0;i<list.size();i++){
            		Tourism tourism=list.get(i);
            		%>
            			<!--信息展示开始-->
                <div class="middle_message">

                    <div class="middle_message_image">
                        <img src="images/tourism/<%=tourism.getImages_name() %>"  width="250px" height="170px">
                    </div>
                    <div class="middle_message_name">
                        <a href="DetailServlet?tourism_id=<%=tourism.getTourism_id()%>">
                            <%=tourism.getTourism_name() %>
                        </a>

                    </div>
                    <div class="middle_message_time">
                        <div class="middle_message_time_left" >
                            130人出游
                        </div>
                        <div class="middle_message_time_right">
                           <span>
                           	￥<%=tourism.getDiscountprice() %>
                           </span>
                        </div>

                    </div>
                    <div class="middle_bottom">
                        <div class="middle_bottom_left">
                            <a href="detail.jsp?tourism_id=<%=tourism.getTourism_id()%>">立即购买</a>
                        </div>
                        <div class="middle_bottom_right">
                            <a href="#">删除收藏</a>
                        </div>

                    </div>
                </div>
                <!--信息展示结束-->
            		<%
            	}
            %>
               


            </div>

    </div>
</body>
</html>