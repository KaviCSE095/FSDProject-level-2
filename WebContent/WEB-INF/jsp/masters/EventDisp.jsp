<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width" />
<link rel="shortcut icon" href="images/logo.png" type="image/png">
<title>Catering-Home</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="css/font-awesome.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/easyui.css">
<script src="commonjs/jquery.min.js"></script>
    <script src="commonjs/jquery-ui.min.js"></script>
    <script  type="text/javascript" src="commonjs/jquery.easyui.min.js"></script>
    <script src="commonjs/iziToast.js"></script>
      <script src="commonjs/calert.js"></script>
<script>
function createFormDlg()
{
	$('#dynaform').html('<div id="FormDlg" class="easyui-dialog" style="width:650px;height:300px; "  closed="true"  data-options="iconCls:\'icon-master\',modal:true" ></div> ');     
	$('#FormDlg').dialog({
		
		onClose: function()
		{
			debugger;
			
			checkConnection();
			if($('#ss').val()==""){
			$('#eventGrid').datagrid('reload'); 	
			}
			$('#FormDlg').dialog('destroy').empty();
			$('#dynaform').html('');
		} 
	
	});
}
function toolClick()
{
	var row = $('#eventGrid').datagrid('getSelected');
	var opts = $('#eventGrid').datagrid('options');
	if (row)
    {  
       Val=row[opts.idField];
    } 
    else
	{	            	
    	window.parent.$.messager.alert('<spring:message code="messages.alert"/>', '<spring:message code="messages.selectRecord"/>'); 
    	return false;
	}
	createFormDlg();

	$('#FormDlg').dialog({			    
	    width:650,   
	    height: 300     
	}); 	
	//url+="&w="+(500-14);
	
	$('#FormDlg').dialog('open').dialog('refresh', url).dialog('setTitle','<spring:message code="messages.setCountryTitle"/>');
}
function doSearch(value,name){
	var rows=gridData;
	
	var opts = $('#eventGrid').datagrid('getColumnFields');
	
	    var trows=[];
	   
		    for(var i=0;i<rows.length;i++)
		    	{
		    	for(var j=0;j<opts.length;j++)
		    		{
		    			var objToStr;
		    			if(rows[i][opts[j]] != undefined){
		    				objToStr = rows[i][opts[j]];
		    			}
			    		if(objToStr.toString().search(new RegExp(value, "i"))!=-1){
			    			trows.push(rows[i]);
			    			j=opts.length;
			    		}	    		
		    		}	    	
		    	}
	    	
	    
	    $('#eventGrid').datagrid('loadData',trows);
}
var gridData=null;
$(document).ready(function ()
	     {$.messager.progress('close');
	     debugger;
	 $.ajax({
	      type: "POST",
	      url: 'EventGridData.do',    
	      dataType: 'json'
	    }).done(function( responseJson ) 
	      {
	    	debugger;
	    	gridData=responseJson;
	      });
	     });
	function regForEvent(value, row, index) {
		debugger;
	   	return"<a href='#' onclick='getEvent("+value+")' style='color:green' role='button'>Register</a>";
	}
	function getEvent(value){
		$.ajax({
	       type: "POST",
	       url:"catEventReg.do?id="+value,       
	       dataType: 'json',
    		success: function(obj){
    			if(obj)
    				$.messager.alert("Message","Register Successful!!");
    		},
            error: function (error) {
          	  $.messager.progress('close');
          	  $.messager.alert('<spring:message code="messages.error"/>',"fail");
              }
       
  	});
		
	}
	/*function catService(value, row, index) {
		debugger;
		switch(value)
	    {
	    case "y":
	   	 return"<span style='color:green'>Need</span>";
	   	 break;
	   
	    case "n":
	   	 return"<span style='color:red'>No Need</span>";
	   	 break;
	    }
	}*/

</script>


</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top" style="height:45px;z-index:9999999;background-color:#2e8b57;">
            <div class="container-fluid" style="height:45px;">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header" style="height:40px;">
                    
                   <img style="margin-top:-13px;" alt="" src="images/logo.png" height="50px" width="50px"> <div class="navbar-brand" style="height:40px;color:white;">KRKB Event Organizers</div>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
               
                </div><!-- /.navbar-collapse -->
                <!-- <i class="fa fa-sign-out" style="cursor:pointer;font-color:white;" aria-hidden="true" onclick="window.location('Logout.do');">Logout</i> -->
            </div><!-- /.container-fluid -->
            
        </nav>
        <br>
	<table class="easyui-datagrid"  title="Events" fit="true" toolbar="#tbEventDetails" id="eventGrid" 
	        data-options="url:'EventGridData.do',fitColumns:true,singleSelect:true,idField:'evtId',striped:true,remoteSort:false">
	    <thead>
	        <tr>
	           <!--  <th data-options="field:'keyword',width:100,halign:'center',sortable:true">Keyword</th> -->
	            <th data-options="field:'event_Tit',width:100,halign:'center'"><label><spring:message code="grid.name"/></label></th>
	      
	             <th data-options="field:'event_cat',width:100,align:'center',halign:'center'"><label><spring:message code="grid.cat"/></label></th>
	              <th data-options="field:'event_loc',width:100,align:'center',halign:'center'"><label><spring:message code="grid.loc"/></label></th>
	              <th data-options="field:'event_date',width:100,align:'center',halign:'center'"><label><spring:message code="grid.date"/></label></th>
	              <th data-options="field:'no_of_days',width:100,align:'center',halign:'center'"><label>No of days</label></th>
	              <th data-options="field:'exp_no_guests',width:100,align:'center',halign:'center'"><label><spring:message code="grid.expNoGuests"/></label></th>
	              <th data-options="field:'food_cnt',width:100,align:'center',halign:'center'"><label><spring:message code="grid.foodCnt"/></label></th>
	              <th data-options="field:'abt',width:100,align:'center',halign:'center'"><label><spring:message code="grid.abt"/></label></th>
	              <th data-options="field:'cus_fname',width:100,align:'center',halign:'center'"><label><spring:message code="grid.fname"/></label></th>
	              <th data-options="field:'cus_lname',width:100,align:'center',halign:'center'"><label><spring:message code="grid.lname"/></label></th>
	              <th data-options="field:'cus_mail',width:100,align:'center',halign:'center'"><label><spring:message code="grid.mail"/></label></th>
	              <th data-options="field:'contactNo',width:100,align:'center',halign:'center'"><label><spring:message code="grid.contactNo"/></label></th>
	              <th data-options="field:'evtId',width:100,align:'center',halign:'center',formatter:regForEvent"><label>Action</label></th>
	        </tr>
	    </thead>
	</table>
	<div id="tbEventDetails" >  
       
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <input id="ss"  onkeyup="doSearch(this.value)" data-enter-as-tab="false" style="width:150px"/><span id="g-search-button"></span><!-- <img id="searchImg" alt="" src="images/Search2.png"  style="margin-top:3px;margin-bottom:-5px;" height="20px" width="25px"></span> -->
         
         </div>
         <div id="dynaform"></div>
</body>
</html>