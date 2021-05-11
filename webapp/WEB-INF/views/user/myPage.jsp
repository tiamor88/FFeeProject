<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypage</title>
<style type="text/css">
   /* 마이페이지 */
    #image_container >img{
  	width: 100%;
    
    }
   
    #image_container{
   width: 200px;
   height: 200px;
   margin: auto;
   }
   
    
    .title{
    width:500px;
    height:54px;
    line-height:54px;
       font-size: 50px;
       font-weight: 900;
       
    }
    .table{
    	width:1000px;
    	border: 1px solid #f0f0f0;
    	margin: auto;
    	text-align:center;
    	margin-bottom: 100px;
    }
    
    #main{
    	width: 1000px;
    	height: 900px;
    	margin: 0 auto;
    	margin-top:250px;
    }
    .table td {
      padding: 10px;
      height:50px;
      border: 1px solid #f0f0f0;
    }
  /*  테이블 */

   body {
      margin:0;
      padding:0;
      width:100%;
      font-size: small; 
      font-family: Arial, '맑은 고딕';
   }
   
   .form-group{
   		width:500px;
   		text-align: left;
   }
      
   .table {
      border-collapse: collapse;
      border-top: 3px solid #000;
      border-left:1px;
      border-right:1px;
      width:1200px;
      text-align: center;
      margin: 0 auto;
    }  
    .table th {
      width:100px;
      font-size:13px;
      color: #333;
      background: #ffffff;
      text-align: left;
    }
    .table th, .table td {
      padding: 10px;
      height:50px;
      border: 1px solid #f0f0f0;
    }
    .table th:first-child, .table td:first-child {
      border-left: 0;
    }
    .table th:last-child, .table td:last-child {
      border-right: 0;
    }
    .table tr td:first-child{
      text-align: left;
    }
    .table caption{caption-side: bottom; display: none;}
    
    /* textarea{
       width:100%;
       height: 200px;
    } */
    input[type="text"]{
       width:100%;
    }
    input[type="password"]{
       width:100%;
    }
    input[type="email"]{
       width:100%;
    }
    input[type="tel"]{
       width:100%;
    }
    /* 타이틀 */
    .sns_title_box{
       width:1200px;
       height: 60px;
       background:#fff;
       margin: 0 auto;
    }
    
    .sns_title{
       float: left;
       line-height: 60px;
       font-size: 20px;
       font-weight: 900;
    }
   /* 버튼 css */
   .button {
      display: inline-block;
      width: 200px;
      height: 54px;
      margin:0 auto;
      text-align: center;
      text-decoration: none;
      line-height: 54px;
      outline: none;
   }
   .button::before,
   .button::after {
      position: absolute;
      z-index: -1;
      display: block;
      content: '';
   }
   .button,
   .button::before,
   .button::after {
      -webkit-box-sizing: border-box;
      -moz-box-sizing: border-box;
      box-sizing: border-box;
      -webkit-transition: all .3s;
      transition: all .3s;
   }
   
   .button {
   background-color: #000;
   color: #fff;
   }
   .button:hover {
      letter-spacing: 5px;
   }
   </style>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
	$(function(){
		
   });
</script>
	<%@include file="/WEB-INF/include/sub_header.jsp" %>
</head>
<body>
	
	
	<div id="main">
	<div class="title">
	<h3>mypage</h3>
	</div>
	<table class="table">
		<tr>
			<th>프로필사진</th>
	      <td>
	      <div id="image_container" class="form-group" >
	      <c:choose>
				<c:when test="${profile.sfilename == null}">
					<img src="/img/no_profile_img.gif" width="100%">
				</c:when>
				<c:otherwise>
					<img src="/image6/${profile.sfilename}" width="100%"/>
				</c:otherwise>
			</c:choose>
	      
	       </div>     
	      </td>
	      
	    </tr>
	   <!--  <tr>
	    
         <td class="profile_image">프로필 사진</td>
        </tr> -->
        
		<tr>
		
		<th>프로필사진</th>
		
	      <td >
		    <form action="/profilePhoto" method="post" enctype="multipart/form-data">
		        <input type="submit" class="button" value="프로필사진 변경">    
		    </form>      
	      </td>
	      
	    </tr> 
</table>
<br>
	<div style="width: 400px; height: 54px;  margin: 0 auto;">
		<div style="float: left;"> 
			<form action="/selfcheckUForm" method="post" >        
		      <input class="update_btn button" type="submit" value="회원수정"/> 
		     </form>
		     </div>
			<div>
			   <form action="/selfcheckDForm" method="post" > 
			    <input class="delete_btn button" type="submit" value="회원탈퇴"/>
			    </form> 
		</div>
	</div>
	    
	 
	   
	 </div>
	 
</body>
</html>