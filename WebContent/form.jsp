<%@page import="cn.liyou.service.TourismService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cn.liyou.pojo.Form"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

    <style>
        *{
            margin: 0 auto;
            padding: 0;
        }
        .out{
            width: 1300px;
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
            width: 1100px;
            height: 500px;
            float: right;
        }
        .weichuxing{
            width: 1098px;
            height: 498px;
            display: block;
            border: solid 1px #E8EDF1;
        }
        .yichuxing{
            width: 1098px;
            height: 498px;
            border: solid 1px #E8EDF1;
            display: none;
        }
        .form_head{
            width: 1100px;
            height: 100px;

        }
        .form_head_nav{
            width: 1100px;
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
            margin-left: 20px;
            border-right: 1px solid white;
        }
        .form_head_nav5{
            width: 110px;
            height: 40px;
            text-align: left;
            float: left;
            margin-left: 20px;
            border-right: 1px solid white;
        }
        .form_head_nav2{
            word-break: break-all;
            text-overflow: ellipsis;
            display: -webkit-box; /** 将对象作为伸缩盒子模型显示 **/
            -webkit-box-orient: vertical; /** 设置或检索伸缩盒对象的子元素的排列方式 **/
            -webkit-line-clamp:1; /** 显示的行数 **/
            overflow: hidden;  /** 隐藏超出的内容 **/
            width: 180px;
            height: 40px;
            text-align: left;
            float: left;
            margin-left: 20px;
            border-right: 1px solid white;

        }
        .form_head_nav3{
            width: 220px;
            height: 40px;
            text-align: left;
            float: left;
            margin-left: 20px;

        }
        .form_message{
            width: 1100px;
            height: 400px;
            background-color: #FFF9ED;
        }
        .form_message_1{
            width: 1098px;
            height:38px ;

            border: solid 1px gainsboro;
            line-height: 38px;

        }
        .form_message a{
            text-decoration: none;
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
            	alert(form_id);
            	var choose=confirm("确定退款吗?");
            	
      			
            	if(choose){
            	
            		$.ajax({
                        url : 'backForm',
                        data : {
                            'form_id': form_id
                           
                        },
                        type : 'post',
                        async : false,
                        success : function(result) {
                            if ($.trim(result) == "true") {
                                alert("退款申请成功，可在我的订单中查看信息");
                            } else {
                                alert("退款申请失败");
                                
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
            	var choose=confirm("确定删除订单吗?");
            	var form_id=$(this).parents().siblings(".form_head_navx").val();
      			
            	if(choose){
            	
            		$.ajax({
                        url : 'deleteForm',
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

        <div class="out">
            <div class="out_left">
                <div class="out_left1">
                    所有订单
                </div>
                <div class="out_left2">
                    未出行订单
                </div>
                <div class="out_left3">
                    已出行订单
                </div>


            </div>

            <div class="out_right">
                <div class="weichuxing" >
                    <div class="form_head">
                        <h1 style="font-size: 15px">未出行订单</h1>
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
                                订单日期
                            </div>
                            <div class="form_head_nav1">
                                供应商电话
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
                    	List<Form> list=new ArrayList<Form>();
                    	list=(List<Form>)request.getAttribute("list");
                    	TourismService tService=new TourismService();
                    	for(int i=0;i<list.size();i++){
                    		Form form=list.get(i);
                    		%>
                    		<div class="form_message_1">
                    		<input type="hidden" class="form_head_navn" value="<%=form.getForm_id()%>">
                            <div class="form_head_nav5">
                                <%=form.getForm_id()%>
                               
                            </div>
                            <div class="form_head_nav2">
                                <a href="DetailServlet?tourism_id=<%=form.getTourism_id()%>"><%=tService.getTourismById(form.getTourism_id()).getTourism_name() %></a>
                            </div>
                            <div class="form_head_nav1">
                                <%=form.getPay()%>
                                
                         
                            </div>
                            <div class="form_head_nav1">
                               <%=form.getForm_day()%>
                            </div>
                            <div class="form_head_nav1">
                                <%=tService.getTourismById(form.getTourism_id()).getCphone() %>
                            </div>
                            <div class="form_head_nav1">
                             	<%=form.getState()%>
                            </div>
                            <div class="form_head_nav3">
                                <div class="back1" id="tuikuan">
                                  	  退款
                                </div>
                            </div>

                        </div>
                    			
                    		
                    		<%
                    	}
                    %>
                       

                    </div>
                </div>
                <div class="yichuxing">

                    <div class="form_head">
                        <h1 style="font-size: 15px">已出行订单</h1>
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
                                订单日期
                            </div>
                            <div class="form_head_nav1">
                                供应商电话
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
                    	List<Form> list2=new ArrayList<Form>();
                    	list2=(List<Form>)request.getAttribute("list2");
                    	
                    	for(int i=0;i<list2.size();i++){
                    		Form form2=list2.get(i);
                    		%>
                			<div class="form_message_1">
                			<input type="hidden" class="form_head_navx" value="<%=form2.getForm_id()%>">
                        
                        		<div class="form_head_nav1">
                            		<%=form2.getForm_id() %>
                        		</div>
                        	<div class="form_head_nav2">
                            	<a href="DetailServlet?tourism_id=<%=form2.getTourism_id()%>"><%=tService.getTourismById(form2.getTourism_id()).getTourism_name() %></a>
                          </div>
                        	<div class="form_head_nav1">
                        	<%=form2.getPay()%>
                                 
                              
                        	</div>
                        	<div class="form_head_nav1">
                            	<%=form2.getForm_day()%>
                        	</div>
                        	<div class="form_head_nav1">
                            	<%=tService.getTourismById(form2.getTourism_id()).getCphone() %>
                             </div>
                        	<div class="form_head_nav1">
                           		 <%=form2.getState()%>
                       		</div>
                        	<div class="form_head_nav3">
                            	<div class="back2" id="sanchu">
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
</body>
</html>