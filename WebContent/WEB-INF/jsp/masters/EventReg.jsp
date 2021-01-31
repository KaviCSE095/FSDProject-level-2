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
    <script>
         $(function() {
            $( "#event_date" ).datepicker();
         });
    </script>
    <script type="text/javascript">

function trim(stringToTrim) {
	return stringToTrim.replace(/^\s+|\s+$/g,"");
}


function checkValidation(){
	debugger;
	$.messager.progress(); 
	var fname =$("#cus_fname").val();
	var lname =$("#cus_lname").val();
	var mail =$("#cus_mail").val();
	var phNo =$("#contactNo").val();
	var evt_tit =$("#event_Tit").val();
	var evt_cat =$("#event_cat").val();
	var evt_loc =$("#event_loc").val();
	var date =$("#event_date").val();
	var noOfDays=$("#no_of_days").val();
	var guests=$("#exp_no_guests").val();
	var cat_ser =$("#cat_ser").val();
	var food_cnt=$("#food_cnt").val();
	var abt =$("#abt").val();
	
	
	if(trim(fname).length==0)
	{
		$.messager.alert('<spring:message code="messages.alert"/>','<spring:message code="messages.enterFname"/>','<spring:message code="messages.warning"/>', function(ok)
				{  
			
            		if (ok==undefined)
            		{
						$("#cus_lname").val(lname);
						$("#cus_mail").val(mail);
						$("#contactNo").val(phNo);
						$("#event_Tit").val(evt_tit);
						$("#event_cat").val(evt_cat);
						$("#event_loc").val(evt_loc);
						$("#event_date").val(date);
						$("#no_of_days").val(noOfDays);
						$("#exp_no_guests").val(guests);
						$("#cat_ser").val(cat_ser);
						$("#abt").val(abt);
						$("#cus_fname").focus();
            		}
            		
				});
		$.messager.progress('close');
		return false;
	}
	
	else if(trim(lname).length==0)
	{
		$.messager.alert('<spring:message code="messages.alert"/>','<spring:message code="messages.enterLname"/>','<spring:message code="messages.warning"/>', function(ok)
				{  
					if (ok==undefined)
		    		{
						$("#cus_fname").val(fname);
						$("#cus_mail").val(mail);
						$("#contact").val(phNo);
						$("#event_Tit").val(evt_tit);
						$("#event_cat").val(evt_cat);
						$("#event_loc").val(evt_loc);
						$("#event_date").val(date);
						$("#no_of_days").val(noOfDays);
						$("#exp_no_guests").val(guests);
						$("#cat_ser").val(cat_ser);
						$("#abt").val(abt);
						$("#cus_lname").focus();
		    		}
				});
		$.messager.progress('close');
		return false;	
	}
	else if(trim(mail).length==0)
	{
		$.messager.alert('<spring:message code="messages.alert"/>','<spring:message code="messages.enterMail"/>','<spring:message code="messages.warning"/>', function(ok)
				{  
					if (ok==undefined)
		    		{
						$("#cus_fname").val(fname);
						$("#cus_lname").val(lname);
						$("#contact").val(phNo);
						$("#event_Tit").val(evt_tit);
						$("#event_cat").val(evt_cat);
						$("#event_loc").val(evt_loc);
						$("#event_date").val(date);
						$("#no_of_days").val(noOfDays);
						$("#exp_no_guests").val(guests);
						$("#cat_ser").val(cat_ser);
						$("#abt").val(abt);
						$("#cus_mail").focus();
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
						$("#cus_fname").val(fname);
						$("#cus_lname").val(lname);
						$("#cus_mail").val(mail);
						$("#event_Tit").val(evt_tit);
						$("#event_cat").val(evt_cat);
						$("#event_loc").val(evt_loc);
						$("#event_date").val(date);
						$("#no_of_days").val(noOfDays);
						$("#exp_no_guests").val(guests);
						$("#cat_ser").val(cat_ser);
						$("#abt").val(abt);
						$("#contactNo").focus();
		    		}
				});
		$.messager.progress('close');
		return false;	
	}
	else if(trim(evt_tit).length==0)
	{
		$.messager.alert('<spring:message code="messages.alert"/>','<spring:message code="messages.enterEvtTit"/>','<spring:message code="messages.warning"/>', function(ok)
				{  
					if (ok==undefined)
		    		{
						$("#cus_fname").val(fname);
						$("#cus_lname").val(lname);
						$("#cus_mail").val(mail);
						$("#contactNo").val(phNo);
						$("#event_cat").val(evt_cat);
						$("#event_loc").val(evt_loc);
						$("#event_date").val(date);
						$("#no_of_days").val(noOfDays);
						$("#exp_no_guests").val(guests);
						$("#cat_ser").val(cat_ser);
						$("#abt").val(abt);
						$("#event_Tit").focus();
		    		}
				});
		$.messager.progress('close');
		return false;	
	}
	else if(trim(evt_cat).length==0)
	{
		$.messager.alert('<spring:message code="messages.alert"/>','<spring:message code="messages.enterEvtCat"/>','<spring:message code="messages.warning"/>', function(ok)
				{  
					if (ok==undefined)
		    		{
						$("#cus_fname").val(fname);
						$("#cus_lname").val(lname);
						$("#cus_mail").val(mail);
						$("#contactNo").val(phNo);
						$("#event_Tit").val(evt_tit);
						$("#event_loc").val(evt_loc);
						$("#event_date").val(date);
						$("#no_of_days").val(noOfDays);
						$("#exp_no_guests").val(guests);
						$("#cat_ser").val(cat_ser);
						$("#abt").val(abt);
						$("#event_cat").focus();
		    		}
				});
		$.messager.progress('close');
		return false;	
	}
	else if(trim(evt_loc).length==0)
	{
		$.messager.alert('<spring:message code="messages.alert"/>','<spring:message code="messages.enterEvtLoc"/>','<spring:message code="messages.warning"/>', function(ok)
				{  
					if (ok==undefined)
		    		{
						$("#cus_fname").val(fname);
						$("#cus_lname").val(lname);
						$("#cus_mail").val(mail);
						$("#contactNo").val(phNo);
						$("#event_Tit").val(evt_tit);
						$("#event_cat").val(evt_cat);
						$("#event_date").val(date);
						$("#no_of_days").val(noOfDays);
						$("#exp_no_guests").val(guests);
						$("#cat_ser").val(cat_ser);
						$("#abt").val(abt);
						$("#event_loc").focus();
		    		}
				});
		$.messager.progress('close');
		return false;	
	}
	else if(trim(date).length==0)
	{
		$.messager.alert('<spring:message code="messages.alert"/>','<spring:message code="messages.enterEvtDate"/>','<spring:message code="messages.warning"/>', function(ok)
				{  
				if(ok==undefined){
					$("#cus_fname").val(fname);
					$("#cus_lname").val(lname);
					$("#cus_mail").val(mail);
					$("#contactNo").val(phNo);
					$("#event_Tit").val(evt_tit);
					$("#event_cat").val(evt_cat);
					$("#event_loc").val(evt_loc);
					$("#no_of_days").val(noOfDays);
					$("#exp_no_guests").val(guests);
					$("#cat_ser").val(cat_ser);
					$("#abt").val(abt);					
				}
				});
		$.messager.progress('close');
		return false;	
	}
	else if(trim(noOfDays).length==0)
	{
		$.messager.alert('<spring:message code="messages.alert"/>','<spring:message code="messages.enterNoOfDays"/>','<spring:message code="messages.warning"/>', function(ok)
				{  
					if (ok==undefined)
		    		{
						$("#cus_fname").val(fname);
						$("#cus_lname").val(lname);
						$("#cus_mail").val(mail);
						$("#contactNo").val(phNo);
						$("#event_Tit").val(evt_tit);
						$("#event_cat").val(evt_cat);
						$("#event_loc").val(evt_loc);
						$("#event_date").val(date);
						$("#exp_no_guests").val(guests);
						$("#cat_ser").val(cat_ser);
						$("#abt").val(abt);
						$("#no_of_days").focus();
		    		}
				});
		$.messager.progress('close');
		return false;	
	}
	else if(trim(guests).length==0)
	{
		$.messager.alert('<spring:message code="messages.alert"/>','<spring:message code="messages.enterGuests"/>','<spring:message code="messages.warning"/>', function(ok)
				{  
					if (ok==undefined)
		    		{
						$("#cus_fname").val(fname);
						$("#cus_lname").val(lname);
						$("#cus_mail").val(mail);
						$("#contactNo").val(phNo);
						$("#event_Tit").val(evt_tit);
						$("#event_cat").val(evt_cat);
						$("#event_loc").val(evt_loc);
						$("#event_date").val(date);
						$("#no_of_days").val(noOfDays);
						$("#cat_ser").val(cat_ser);
						$("#abt").val(abt);
						$("#exp_no_guests").focus();
		    		}
				});
		$.messager.progress('close');
		return false;	
	}
	else if(cat_ser=="y" && trim(food_cnt).length==0)
	{
		$.messager.alert('<spring:message code="messages.alert"/>','<spring:message code="messages.foodCnt"/>','<spring:message code="messages.warning"/>', function(ok)
				{  
					if (ok==undefined)
		    		{
						$("#cus_fname").val(fname);
						$("#cus_lname").val(lname);
						$("#cus_mail").val(mail);
						$("#contactNo").val(phNo);
						$("#event_Tit").val(evt_tit);
						$("#event_cat").val(evt_cat);
						$("#event_loc").val(evt_loc);
						$("#event_date").val(date);
						$("#no_of_days").val(noOfDays);
						$("#exp_no_guests").val(guests);
						$("#abt").val(abt);
						$("#food_cnt").focus();
		    		}
				});
		$.messager.progress('close');
		return false;	
	}
	else 		
	 {
		
		$.ajax({
	        type: "POST",
	        url:"eventBook.do",       
	       dataType: 'json',
	        data:$('#theFormID').serialize(),			  
    		success: function(obj){		    			
    			if(obj.keyword=="success")
    				{		
    				debugger;
    					
    				 	$.messager.progress('close');
	    				$.messager.alert('<spring:message code="messages.booked"/>',obj.message);
	    				$("#cus_fname").val("");
						$("#cus_lname").val("");
						$("#cus_mail").val("");
						$("#contactNo").val("");
						$("#event_Tit").val("");
						$("#event_cat").val("");
						$("#event_loc").val("");
						$("#event_date").val("");
						$("#no_of_days").val("");
						$("#cat_ser").val("");
						$("#food_cnt").val("");
						$("#abt").val("");
						$("#exp_no_guests").val("");
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
<script>
        $(function(){
            $('#event_date').datebox().datebox('calendar').calendar({
                validator: function(date){
                    var now = new Date();
                    var d1 = new Date(now.getFullYear(), now.getMonth(), now.getDate());
                    var d2 = new Date(now.getFullYear(), now.getMonth(), now.getDate()+10);
                    return d1<=date && date<=d2;
                }
            });
        });
    </script>
</head>

<body id="theme-default" class="full_block" onload="window.history.forward(); document.forms[0].cus_fname.focus();" onpageshow="if (event.persisted) window.history.forward();" >
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
    <div id="login_page" Style="background:url(images/events.png);background-repeat:no-repeat;background-position:center right;margin-top:100px;">
        <div class="login_container" style="width:543;margin-top:20px;margin-bottom:30px;top:-10px;">
          
            <div class="block_container blue_d" style="border-radius:10px;background:rgba(76,175,80,0.8);margin-top:50px;">
                <form method="post" id="theFormID" data-enter-as-tab="true">
                    <div class="block_form" >
                    <div class="container login-box-header ">
                        <b><label><spring:message code="label.eventReg"/></label></b></div>
                        <hr style="border-top: 4px solid rgb(21, 30, 70);">
                        <input type="hidden" name="event_status"  id="event_status" value="booked"  />
                        <ul>
                        	
                        	<li class="login_user">
                               <!--  <input name="" value="username" type="text"> -->
                               <label class="input-group" for="cus_fname" style="margin-bottom:0px;"><spring:message code="label.fname"/></label>
                                <input type="text" name="cus_fname"  id="cus_fname"  class="inputtxt"   />
                            </li>
                            
                            <li class="login_user">
                               <!--  <input name="" value="username" type="text"> -->
                               <label class="input-group" for="cus_lname" style="margin-bottom:0px;"><spring:message code="label.lname"/></label>
                                <input type="text" name="cus_lname"  id="cus_lname"  class="inputtxt"   />
                            </li>
                            
                            <li class="login_user">
                               <!--  <input name="" value="cus_mail" type="text"> -->
                               <label class="input-group" for="cus_mail" style="margin-bottom:0px;"><spring:message code="label.mail"/></label>
                                <input type="email" name="cus_mail"  id="cus_mail"  class="inputtxt"   />
                            </li>
                            
                            <li class="login_user">
                               <!--  <input name="" value="username" type="text"> -->
                               <label class="input-group" for="username" style="margin-bottom:0px;"><spring:message code="label.contactNo"/></label>
                                <input type="text" name="contactNo"  id="contactNo"  class="inputtxt"   />
                            </li>
                     
                     		<li class="login_user">
                               <!--  <input name="" value="username" type="text"> -->
                               <label class="input-group" for="event_Tit" style="margin-bottom:0px;"><spring:message code="label.eventTitle"/></label>
                                <input type="text" name="event_Tit"  id="event_Tit"  class="inputtxt"   />
                            </li>
                            
                            <li class="login_user">
                               <!--  <input name="" value="username" type="text"> -->
                               <label class="input-group" for="event_cat" style="margin-bottom:0px;"><spring:message code="label.eventCat"/></label>
                                <input type="text" name="event_cat"  id="event_cat"  class="inputtxt"   />
                            </li>
                            
                            <li class="login_user">
                               <!--  <input name="" value="username" type="text"> -->
                               <label class="input-group" for="event_loc" style="margin-bottom:0px;"><spring:message code="label.loc"/></label>
                                <input type="text" name="event_loc"  id="event_loc"  class="inputtxt"   />
                            </li>
                            
                            <li class="login_user">
                               <!--  <input name="" value="username" type="text"> -->
                                <input name="event_date" id="event_date" class="easyui-datebox" label="Event Date" labelPosition="top" required="required" autocomplete="off" style="width:100%;">
                            </li>
                            
                            <li class="login_user">
                               <!--  <input name="" value="username" type="text"> -->
                               <label class="input-group" for="no_of_days" style="margin-bottom:0px;"><spring:message code="label.days"/></label>
                                <input type="number" name="no_of_days"  id="no_of_days"  class="inputtxt" min="1"  />
                            </li>
                            
                            <li class="login_user">
                               <!--  <input name="" value="username" type="text"> -->
                               <label class="input-group" for="exp_no_guests" style="margin-bottom:0px;"><spring:message code="label.guests"/></label>
                                <input type="number" name="exp_no_guests"  id="exp_no_guests"  class="inputtxt"  min="1" />
                            </li>
                            
                            <li class="login_user">
                               <!--  <input name="" value="username" type="text"> -->
                               <label class="input-group" for="cat_ser" style="margin-bottom:0px;"><spring:message code="label.cater"/></label>
								        <input type="radio" id="cat_ser_y" name="cat_ser" onchange="$('#food_cnt').removeAttr('disabled')" value="y" checked > Need
								    <br>
								        <input type="radio" id="cat_ser_n" name="cat_ser" onchange="$('#food_cnt').val(''); $('#food_cnt').attr('disabled','disabled');" value="n" > No need
                            </li>
                            
                            <li class="login_user">
                               <!--  <input name="" value="username" type="text"> -->
                               <label class="input-group" for="food_cnt" style="margin-bottom:0px;"><spring:message code="label.foodCnt"/></label>
                                <input type="number" name="food_cnt"  id="food_cnt"  class="inputtxt"  min="1" />
                            </li>
                            
                            <li class="login_user">
                               <!--  <input name="" value="username" type="text"> -->
                               <label class="input-group" for="abt" style="margin-bottom:0px;"><spring:message code="label.addInfo"/></label>
                                <input type="text" name="abt"  id="abt"  class="inputtxt"   />
                            </li>
                            
                        </ul>
                        <br/>
                        <!-- <input class="login_btn blue_lgel" name="" value="Login" type="button" onclick="newpage()"> -->
                        <input class="login_btn blue_lgel" style="background-color:#2e8b57     !important" name="btnSubmit" onclick ="return checkValidation(this);" type="submit" value="Register" >
                       	
						
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