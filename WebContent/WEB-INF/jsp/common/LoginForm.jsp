<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width" />
    <title>Event Organizers-Login</title>
    <link rel="shortcut icon" href="images/logo.png" type="image/png">
    <link href="css/reset.css" rel="stylesheet" type="text/css">
    <link href="css/layout.css" rel="stylesheet" type="text/css">
    <link href="css/themes.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="css/easyui.css">
    <link href="css/typography.css" rel="stylesheet" type="text/css">
    <link href="css/styles.css" rel="stylesheet" type="text/css">
    <link href="css/shCore.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
     <link href="css/form.css" rel="stylesheet" type="text/css">
      <link href="css/wizard.css" rel="stylesheet" type="text/css">
      
          <link href="css/iziToast.css" rel="stylesheet" type="text/css">
            <!-- <link href="css/stylePwReset.css" rel="stylesheet" type="text/css"> -->
        <script src="commonjs/jquery.min.js"></script>
    <script src="commonjs/jquery-ui.min.js"></script>
    <script  type="text/javascript" src="commonjs/jquery.easyui.min.js"></script>
   <!--  <script src="commonjs/jquery.ui.touch-punch.js"></script>
    <script src="commonjs/chosen.jquery.js"></script>
    <script src="commonjs/uniform.jquery.js"></script> -->
     <script src="commonjs/iziToast.js"></script>
      <script src="commonjs/calert.js"></script>
 <%--   <script type="text/javascript" src="<%=request.getContextPath() %>/commonjs/passwordStrengthVal.js"></script> --%>
    <script type="text/javascript">
        $(function () {
            $(window).resize(function () {
                $('.login_container').css({
                    position: 'absolute',
                    left: ($(window).width() - $('.login_container').outerWidth()) / 2,
                    top: ($(window).height() - $('.login_container').outerHeight()) / 2
                });
            });
            // To initially run the function:
            $(window).resize();
        });
    </script>
    <script type="text/javascript">

function trim(stringToTrim) {
	return stringToTrim.replace(/^\s+|\s+$/g,"");
}


function checkValidation(){
	debugger;
	$.messager.progress(); 
	var name =$("#j_username").val();
	var pass =$("#j_password").val();
	
	if(trim(name).length==0)
	{
		$.messager.alert('<spring:message code="messages.alert"/>','<spring:message code="messages.enterUserName"/>','<spring:message code="messages.warning"/>', function(ok)
				{  
			
            		if (ok==undefined)
            		{  
						$("#j_password").val(pass);
						$("#j_username").focus();
            		}
	});	
		$.messager.progress('close');
		return false;
	}
	
	else if(trim(pass).length==0)
	{
		$.messager.alert('<spring:message code="messages.alert"/>','<spring:message code="messages.enterPassword"/>','<spring:message code="messages.warning"/>', function(ok)
				{
					if (ok==undefined)
		    		{
						$("#j_username").val(name);
						$("#j_password").focus();
		    		}
				});
		$.messager.progress('close');
		return false;	
	}
	else 
		
	 {
		
		 $.ajax({
	 		  type: "POST",
	 		  url: "LoginValidation.do",
	 		  dataType:"json",
	 		
	 		 async:false,
	 		  data:{
	 			 
	 			 loginId: $('#j_username').val(),
	 		      password: $('#j_password').val()
	 			  },
	 	  success: function(response){
	 		  debugger;

	 		 if(response.keyword=="SUCCESS")
	 		 {
	 			var path="<%=request.getContextPath() %>";
		 		  path=path+"/"+"catHome.do";
		 		 window.location.replace(path);
	 		 }
	 		 else 
	 			 {
	 			//var userName=$('#j_username').val();
		 		  //var action="L1";
			 		/* $.ajax({
			 	 		  type: "POST",
			 	 		  url: "saveUserLog.do",
			 	 		  dataType:"json",
			 	 	  	  async:false,
			 	 		  data:{
			 	 		      userName: userName,
			 	 		      action:action
			 	 			  },
			 	 	  success: function(response){
			 	 		  
			 	 	  }
			 		
			 		  });*/
	 			CAlert.Danger("The username or password you entered is incorrect !");
	 			$.messager.progress('close'); 
	 			 }
	 		 
	 		 },
             error: function (error) {
           	  $.messager.progress('close');
           	  $.messager.alert('<spring:message code="messages.error"/>',"fail");
             } 
	 		
	
	 		});
		// document.forms[0].action="LoginValidation.do";
		//document.forms[0].submit();
		return false;
	}
	
}

</script>
<script language="Javascript">

function capLock(e){
	 kc = e.keyCode?e.keyCode:e.which;
	 sk = e.shiftKey?e.shiftKey:((kc == 16)?true:false);
	 if(((kc >= 65 && kc <= 90) && !sk)||((kc >= 97 && kc <= 122) && sk))
	  document.getElementById('capsid').style.visibility = 'visible';
	 else
	   document.getElementById('capsid').style.visibility = 'hidden';
	}
function capLock1(e){
	document.getElementById('errorblock').text="";
	}
	
</script>
</head>

<body id="theme-default" class="full_block" onload="window.history.forward(); document.forms[0].j_username.focus();" onpageshow="if (event.persisted) window.history.forward();" >
 <div class="panel layout-panel layout-panel-north panel-htop" style="width: 100%; left: 0px; top: 0px;;">
 <div data-options="region:'north'"  title="" class="panel-body panel-body-noheader layout-body">
        <nav class="navbar navbar-default navbar-fixed-top" style="height:45px;z-index:9999999;background-color:#2e8b57;">
            <div class="container-fluid" style="height:45px;">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header" style="height:40px;">
                    
                   <img style="margin-top:-13px;" alt="" src="images/logo.png" height="50px" width="50px"> <div class="navbar-brand" style="height:40px;color:white;cursor:pointer" onclick=window.open("Main.do","_self")>KRKB Event Organizers</div>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
               
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
     <input type="hidden" name="userType" id="userType" value="<%=request.getSession().getAttribute("currentUserType")%>"/> 
    </div></div>
    <div id="login_page" Style="background:url(images/Cateringlog.png);background-repeat:no-repeat;background-position:center right;">
        <div class="login_container" style="width:543;margin-top:-25px;">
          
            <div class="block_container blue_d" style="border-radius:10px;background:rgba(76,175,80,0.8)">
                <form action="#" method="post" id="theFormID">
                    <div class="block_form">
                    <div class="container login-box-header " >
                        
                        <b><label><spring:message code="label.logIn"/></label></b></div>
                        <hr style="border-top: 4px solid rgb(21, 30, 70);">
                        <ul>
                     
                            
                            <li class="login_user">
                               <!--  <input name="" value="username" type="text"> -->
                               <label class="input-group" for="username" style="margin-bottom:0px;"><spring:message code="label.userName"/></label>
                                <input type="text" name="j_username"  id="j_username"  class="inputtxt"   />
                            </li>
                            
                            <li class="login_pass">
                             <!--    <input name="" type="password" value="123456"> -->
                                 <label class="input-group" for="username" style="margin-bottom:0px;font-weight:bold"><spring:message code="label.password"/></label>
                                <input type="password" name="j_password" id="j_password"   class="inputtxt" />
                            </li>
                        </ul>
                        <!-- <input class="login_btn blue_lgel" name="" value="Login" type="button" onclick="newpage()"> -->
                        <input class="login_btn blue_lgel" style="background-color:#2e8b57     !important" name="btnSubmit" onclick ="return checkValidation(this);" type="submit" value="Login" >
                        <br/><br/><a href="register.do" style="float:right;" class="login_btn" >New team click to register</a>	
						
                    </div>
                   <ul class="login_opt_link">
                      
                    </ul> 
                </form>
            </div>
        </div>
    </div>
  
</body>

<!-- Mirrored from www.lab.westilian.com/bingo-admin/login-02.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 12 Jun 2018 09:05:57 GMT -->
</html>