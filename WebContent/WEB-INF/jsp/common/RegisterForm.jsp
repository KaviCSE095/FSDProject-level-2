<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width" />
    <title>Event Organizers-Register</title>
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
	var name =$("#cat_name").val();
	var email=$("#cat_email").val();
	var phNo=$("#cat_phNo").val();
	var size=$("#team_size").val();
	var exp=$("#team_exp").val();
	var bar=$("#bar_arrg").val();
	var style=$("#ser_style").val();
	var spec=$("#food_spec").val();
	var category=$("#team_cat").val();
	var pass =$("#team_pwd").val();
	var abt=$("#abt_cat").val();
	
	if(trim(name).length==0)
	{
		$.messager.alert('<spring:message code="messages.alert"/>','<spring:message code="messages.enterCatName"/>','<spring:message code="messages.warning"/>', function(ok)
				{  
			
            		if (ok==undefined)
            		{  
            			$("#cat_email").val(email);
            			$("#cat_phNo").val(phNo);
            			$("#team_size").val(size);
            			$("#team_exp").val(exp);
            			$("#bar_arrg").val(bar);
            			$("#ser_style").val(style);
            			$("#food_spec").val(spec);
            			$("#team_cat").val(category);
            			$("#team_pwd").val(pass);
            			$("#abt_cat").val(abt);
            			$("#cat_name").focus();
            		}
	});	
		$.messager.progress('close');
		return false;
	}
	
	else if(trim(email).length==0)
	{
		$.messager.alert('<spring:message code="messages.alert"/>','<spring:message code="messages.enterMail"/>','<spring:message code="messages.warning"/>', function(ok)
				{  
					if (ok==undefined)
		    		{  
		    			$("#cat_name").val(name);
		    			$("#cat_phNo").val(phNo);
		    			$("#team_size").val(size);
		    			$("#team_exp").val(exp);
		    			$("#bar_arrg").val(bar);
		    			$("#ser_style").val(style);
		    			$("#food_spec").val(spec);
		    			$("#team_cat").val(category);
		    			$("#team_pwd").val(pass);
		    			$("#abt_cat").val(abt);
		    			$("#cat_email").focus();
		    		}
				});
		$.messager.progress('close');
		return false;	
	}
	else if(trim(phNo).length==0)
	{
		$.messager.alert('<spring:message code="messages.alert"/>','<spring:message code="messages.enterPhNo"/>','<spring:message code="messages.warning"/>', function(ok)
				{  
					if (ok==undefined)
		    		{  
		    			$("#cat_name").val(name);
		    			$("#cat_email").val(email);
		    			$("#team_size").val(size);
		    			$("#team_exp").val(exp);
		    			$("#bar_arrg").val(bar);
		    			$("#ser_style").val(style);
		    			$("#food_spec").val(spec);
		    			$("#team_cat").val(category);
		    			$("#team_pwd").val(pass);
		    			$("#abt_cat").val(abt);
		    			$("#cat_phNo").focus();
		    		}
				});
		$.messager.progress('close');
		return false;	
	}
	else if(trim(size).length==0)
	{
		$.messager.alert('<spring:message code="messages.alert"/>','<spring:message code="messages.cat_size"/>','<spring:message code="messages.warning"/>', function(ok)
				{  
					if (ok==undefined)
		    		{  
		    			$("#cat_name").val(name);
		    			$("#cat_email").val(email);
		    			$("#cat_phNo").val(phNo);
		    			$("#team_exp").val(exp);
		    			$("#bar_arrg").val(bar);
		    			$("#ser_style").val(style);
		    			$("#food_spec").val(spec);
		    			$("#team_cat").val(category);
		    			$("#team_pwd").val(pass);
		    			$("#abt_cat").val(abt);
		    			$("#team_size").focus();
		    		}
				});
		$.messager.progress('close');
		return false;	
	}
	else if(trim(exp).length==0)
	{
		$.messager.alert('<spring:message code="messages.alert"/>','<spring:message code="messages.cat_exp"/>','<spring:message code="messages.warning"/>', function(ok)
				{  
					if (ok==undefined)
		    		{  
		    			$("#cat_name").val(name);
		    			$("#cat_email").val(email);
		    			$("#cat_phNo").val(phNo);
		    			$("#team_size").val(size);
		    			$("#bar_arrg").val(bar);
		    			$("#ser_style").val(style);
		    			$("#food_spec").val(spec);
		    			$("#team_cat").val(category);
		    			$("#team_pwd").val(pass);
		    			$("#abt_cat").val(abt);
		    			$("#team_exp").focus();
		    		}
				});
		$.messager.progress('close');
		return false;	
	}
	else if(trim(style).length==0)
	{
		$.messager.alert('<spring:message code="messages.alert"/>','<spring:message code="messages.cat_style"/>','<spring:message code="messages.warning"/>', function(ok)
				{  
					if (ok==undefined)
		    		{  
		    			$("#cat_name").val(name);
		    			$("#cat_email").val(email);
		    			$("#cat_phNo").val(phNo);
		    			$("#team_size").val(exp);
		    			$("#team_exp").val(exp);
		    			$("#bar_arrg").val(bar);
		    			$("#food_spec").val(spec);
		    			$("#team_cat").val(category);
		    			$("#team_pwd").val(pass);
		    			$("#abt_cat").val(abt);
		    			$("#ser_style").focus();
		    		}
				});
		$.messager.progress('close');
		return false;	
	}
	else if(trim(spec).length==0)
	{
		$.messager.alert('<spring:message code="messages.alert"/>','<spring:message code="messages.cat_spec"/>','<spring:message code="messages.warning"/>', function(ok)
				{  
					if (ok==undefined)
		    		{  
		    			$("#cat_name").val(name);
		    			$("#cat_email").val(email);
		    			$("#cat_phNo").val(phNo);
		    			$("#team_size").val(exp);
		    			$("#team_exp").val(exp);
		    			$("#bar_arrg").val(bar);
		    			$("#ser_style").val(style);
		    			$("#team_cat").val(category);
		    			$("#team_pwd").val(pass);
		    			$("#abt_cat").val(abt);
		    			$("#food_spec").focus();
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
		    			$("#cat_name").val(name);
		    			$("#cat_email").val(email);
		    			$("#cat_phNo").val(phNo);
		    			$("#team_size").val(exp);
		    			$("#team_exp").val(exp);
		    			$("#bar_arrg").val(bar);
		    			$("#ser_style").val(style);
		    			$("#food_spec").val(spec);
		    			$("#team_cat").val(category);
		    			$("#abt_cat").val(abt);
		    			$("#team_pwd").focus();
		    		}
				});
		$.messager.progress('close');
		return false;	
	}
	else if(trim(abt).length==0)
	{
		$.messager.alert('<spring:message code="messages.alert"/>','<spring:message code="messages.cat_abt"/>','<spring:message code="messages.warning"/>', function(ok)
				{  
					if (ok==undefined)
		    		{  
		    			$("#cat_name").val(name);
		    			$("#cat_email").val(email);
		    			$("#cat_phNo").val(phNo);
		    			$("#team_size").val(exp);
		    			$("#team_exp").val(exp);
		    			$("#bar_arrg").val(bar);
		    			$("#ser_style").val(style);
		    			$("#food_spec").val(spec);
		    			$("#team_cat").val(category);
		    			$("#team_pwd").val(pass);
		    			$("#abt_cat").focus();
		    		}
				});
		$.messager.progress('close');
		return false;	
	}
	else 
		
	 {
		
		$.ajax({
	        type: "POST",
	        url:"catLoginVal.do",       
	       dataType: 'json',
	        data:$('#theFormID').serialize(),			  
    		success: function(obj){		    			
    			if(obj.keyword=="success")
    				{		
    				debugger;
    					
    				 	$.messager.progress('close');
	    				$.messager.alert('<spring:message code="messages.catTeamReg"/>',obj.message);
	    				$("#cat_name").val("");
		    			$("#cat_email").val("");
		    			$("#cat_phNo").val("");
		    			$("#team_size").val("");
		    			$("#team_exp").val("");
		    			$("#bar_arrg").val("");
		    			$("#ser_style").val("");
		    			$("#food_spec").val("");
		    			$("#team_cat").val("");
		    			$("#team_pwd").val("");
		    			$("#abt_cat").val("");
		    			
    				}
    			else if(obj.keyword=="failure")
	    		  {
    				debugger;
	    			  $.messager.progress('close');
			    	  $.messager.alert('<spring:message code="messages.error"/>',obj.message);
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
 <div class="panel layout-panel layout-panel-north panel-htop" style="width: 100%; left: 0px; top: 0px;position:sticky;">
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
    <div id="login_page" Style="background:url(images/catering.png);background-repeat:no-repeat;background-position:center right;margin-top:100px;">
        <div class="login_container" style="width:543;margin-top:20px;margin-bottom:30px;top:-10px;">
          
            <div class="block_container blue_d" style="border-radius:10px;background:rgba(76,175,80,0.8);margin-top:50px;">
                <form action="" method="post" id="theFormID">
                    <div class="block_form" >
                    <div class="container login-box-header ">
                        <b><label><spring:message code="label.register"/></label></b></div>
                        <hr style="border-top: 4px solid rgb(21, 30, 70);">
                        <ul>
                     
                     		<li class="login_user">
                               <!--  <input name="" value="username" type="text"> -->
                               <label class="input-group" for="cat_name" style="margin-bottom:0px;"><spring:message code="label.cat_name"/></label>
                                <input type="text" name="cat_name"  id="cat_name"  class="inputtxt"   />
                            </li>
                            <li class="login_user">
                               <!--  <input name="" value="username" type="text"> -->
                               <label class="input-group" for="cat_email" style="margin-bottom:0px;"><spring:message code="label.emailId"/></label>
                                <input type="text" name="cat_email"  id="cat_email"  class="inputtxt"   />
                            </li>
                            <li class="login_user">
                               <!--  <input name="" value="username" type="text"> -->
                               <label class="input-group" for="cat_phNo" style="margin-bottom:0px;"><spring:message code="label.contactNo"/></label>
                                <input type="text" name="cat_phNo"  id="cat_phNo"  class="inputtxt"   />
                            </li>
                            <li class="login_user">
                               <!--  <input name="" value="username" type="text"> -->
                               <label class="input-group" for="team_size" style="margin-bottom:0px;"><spring:message code="label.size"/></label>
                                <input type="number" name="team_size"  id="team_size"  class="inputtxt" min="5"  />
                            </li>
                            <li class="login_user">
                               <!--  <input name="" value="username" type="text"> -->
                               <label class="input-group" for="team_exp" style="margin-bottom:0px;"><spring:message code="label.exper"/></label>
                                <input type="number" name="team_exp"  id="team_exp"  class="inputtxt" min="1"  /> in years
                            </li>
                            <li class="login_user">
                               <!--  <input name="" value="username" type="text"> -->
                               <label class="input-group" for="bar_arrg" style="margin-bottom:0px;"><spring:message code="label.bar"/></label>
                                <input type="radio" name="bar_arrg"  id="bar_arrg_a"  value="a" checked="checked"  /> Available<br>
                                <input type="radio" name="bar_arrg"  id="bar_arrg_na"  value="na"   /> Not Available
                            </li>
                            <li class="login_user">
                               <!--  <input name="" value="username" type="text"> -->
                               <label class="input-group" for="ser_style" style="margin-bottom:0px;"><spring:message code="label.s_style"/></label>
                                <input type="text" name="ser_style"  id="ser_style"  class="inputtxt"   />
                            </li>
                            <li class="login_user">
                               <!--  <input name="" value="username" type="text"> -->
                               <label class="input-group" for="food_spec" style="margin-bottom:0px;"><spring:message code="label.specialization"/></label>
                                <input type="text" name="food_spec"  id="food_spec"  class="inputtxt"   />
                            </li>
                             <li class="login_user">
                               <!--  <input name="" value="username" type="text"> -->
                               <label class="input-group" for="team_cat" style="margin-bottom:0px;"><spring:message code="label.eventCat"/></label>
                                <input type="radio" name="team_cat"  id="team_cat_v"  value="v" checked="checked"  /> Veg<br>
                                <input type="radio" name="team_cat"  id="team_cat_nv"  value="nv"   /> Non-veg<br>
                                <input type="radio" name="team_cat"  id="team_cat_b"  value="b"   /> Both
                            </li>
                            
                            <li class="login_pass">
                             <!--    <input name="" type="password" value="123456"> -->
                                 <label class="input-group" for="team_pwd" style="margin-bottom:0px;font-weight:bold;"><spring:message code="label.password"/></label>
                                <input type="password" name="team_pwd" id="team_pwd"   class="inputtxt" />
                            </li>
                            
                            <li class="login_user">
                               <!--  <input name="" value="username" type="text"> -->
                               <label class="input-group" for="abt_team" style="margin-bottom:0px;"><spring:message code="label.abt"/></label>
                                <input type="text" name="abt_cat"  id="abt_cat"  class="inputtxt"   />
                            </li>
                        </ul>
                        <br/>
                        <!-- <input class="login_btn blue_lgel" name="" value="Login" type="button" onclick="newpage()"> -->
                        <input class="login_btn blue_lgel" style="background-color:#2e8b57     !important" name="btnSubmit" onclick ="return checkValidation(this);" type="submit" value="Sign Up" >
                        <br/><br/><a href="login.do" style="float:right;" class="login_btn" >Already have an account!</a>	
						
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