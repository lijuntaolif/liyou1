<%@page import="cn.liyou.pojo.Tourism"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{
            margin: 0 auto;
            padding: 0;
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
			width:1300px;
			height:auto;
			background-color: gray;
			margin-top: 30px;
			
		}
		.middle_head{
		width:1300px;
		height:40px;
		background-color:#EEEEEE;
		}
		.list{
		width:1300px;
		height:40px;
		background-color:#FFF9ED;
		border-top: 1px solid white;
		
		}
		.middle_head .form_head_nav1{
			width:150px;
			height:40px;
			float:left;
	
			line-height:40px;
			text-align: center;
			 border-right: 1px solid white;
		}
		.middle_head .form_head_nav2{
			width:250px;
			height:40px;
			float:left;
		
			line-height:40px;
			text-align: center;
			 border-right: 1px solid white;
		}
		.middle_head .form_head_nav3{
			width:294px;
			height:40px;
			float:left;
		
			line-height:40px;
			text-align: center;
		}
		.list .form_head_nav1{
			width:150px;
			height:40px;
			float:left;
		
			line-height:40px;
			text-align: center;
			 border-right: 1px solid white;
		}
		.list .form_head_nav3{
			width:294px;
			height:40px;
			float:left;
		
			line-height:40px;
			text-align: center;
		}
		.list .form_head_nav2{
			width:250px;
			height:40px;
			float:left;
		
			line-height:40px;
			text-align: center;
			border-right: 1px solid white;
			display: -webkit-box; /** 将对象作为伸缩盒子模型显示 **/
            -webkit-box-orient: vertical; /** 设置或检索伸缩盒对象的子元素的排列方式 **/
            -webkit-line-clamp:1; /** 显示的行数 **/
            overflow: hidden;  /** 隐藏超出的内容 **/
		}
		.back{
			margin-top:5px;
			width:100px;
			height:30px;
			line-height: 30px;
			background-color: red;
			float: left;
			margin-left: 25px
		}
		.back a{
			text-decoration: none;
			color:white;
		}
		.del{
			margin-top:5px;
			width:100px;
			height:30px;
			line-height: 30px;
			background-color: red;
			float: left;
			margin-left: 25px
		}
		
</style>
  <script src="js/jquery-1.8.3.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function(){
               
            $(".del").click(function(){
            	var choose=confirm("确定删除此项目吗?");
            	var tourism_id=$(this).parents().siblings(".form_head_navx").val();
      			
            	if(choose){
            	
            		$.ajax({
                        url : 'deleteTourism',
                        data : {
                            'tourism_id': tourism_id
                           
                        },
                        type : 'post',
                        async : false,
                        success : function(result) {
                            if ($.trim(result) == "true") {
                                alert("项目删除成功！！！");
                            } else {
                                alert("项目删除失败");
                                
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
	<div class="middle">
		<div class="middle_head">
		 <div class="form_head_nav1">
                        项目编号
         </div>
         <div class="form_head_nav2">
                               项目名称
         </div>
         <div class="form_head_nav1">
                                出发地
         </div>
         <div class="form_head_nav1">
                             目的地
         </div>
         <div class="form_head_nav1">
                               折后价格
         </div>
         <div class="form_head_nav1">
                                库存
          </div>
          <div class="form_head_nav3">
                                项目操作
          </div>
         </div>
         
         <%
         	List<Tourism> list=new ArrayList<Tourism>();
         	list=(List<Tourism>)request.getAttribute("list");
         	for(int i=0;i<list.size();i++){
         		Tourism tourism=list.get(i);
         		
         		%>
         		 <div class="list">
         		<input type="hidden" class="form_head_navx" value="<%=tourism.getTourism_id()%>">
		 <div class="form_head_nav1">
                        <%=tourism.getTourism_id() %>
         </div>
         <div class="form_head_nav2">
                              <%=tourism.getTourism_name() %>
         </div>
         <div class="form_head_nav1">
                             <%=tourism.getDeparture()%>
         </div>
         <div class="form_head_nav1">
                             <%=tourism.getDestination() %>
         </div>
         <div class="form_head_nav1">
                            <%=tourism.getDiscountprice() %>
         </div>
         <div class="form_head_nav1">
                          <%=tourism.getDiscountprice() %>
          </div>
          <div class="form_head_nav3">
                <div class="back">
                	<a href="updateTourism?tourism_id=<%=tourism.getTourism_id()%>">更新</a>
                </div>
                <div class="del">
                	删除
                </div>
          </div>
         </div>
         		<%
         	}
         %>
        
	</div>
</div>
</body>
</html>