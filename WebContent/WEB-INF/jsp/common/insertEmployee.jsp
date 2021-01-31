<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width" />
    <title>Insert Employee</title>
    <link rel="shortcut icon" href="images/logo4.png" type="image/png">
	<link href="css/icon.css" rel="stylesheet" type="text/css">
	<link href="css/color.css" rel="stylesheet" type="text/css">
	<link href="css/demo.css" rel="stylesheet" type="text/css">
   
    <link rel="stylesheet" type="text/css" href="css/easyui.css">
   
    <link href="css/bootstrap1.css" rel="stylesheet" type="text/css">
   
      
          <link href="css/iziToast.css" rel="stylesheet" type="text/css">
            <!-- <link href="css/stylePwReset.css" rel="stylesheet" type="text/css"> -->
        <script src="commonjs/jquery.min.js"></script>
    <script src="commonjs/jquery-ui.min.js"></script>
    <script  type="text/javascript" src="commonjs/jquery.easyui.min.js"></script>
     <script src="commonjs/iziToast.js"></script>
   
      <script src="commonjs/calert.js"></script>
      
 
    
<script type="text/javascript">
		$(document).ready(function ()
		     {$.messager.progress('close');
		$.ajax({
		      type: "POST",
		      url: 'EmployeeGridData.do',    
		      dataType: 'json'
		    }).done(function( responseJson ) 
		      {
		    	debugger;
		    	gridData=responseJson;
		      });
		     });
	     
		function empReg()
		{
			
				debugger;
				
				
				var id=document.getElementById("hidkey").value;
				var name=document.getElementById("empName").value;
				var userName=document.getElementById("empUserName").value;
				var password=document.getElementById("empPassword").value;
				var dob=document.getElementById("empDob").value;
				var address=document.getElementById("empAddress").value;
				var ph=parseInt(document.getElementById("empPh").value);
		
				
				 if(name.length != "" && userName.length != "" && password.length != "" && dob.length != "" && address.length != "" && document.getElementById("empPh").value != "")
					{
					 
					 if(id=='')
						 {
							 $.ajax({
						 		  type: "POST",
						 		  url: "addEmployee.do",
						 		  dataType:"json",
						 		
						 		 async:false,
						 		  data:$('#formAddEmployee').serialize(),
						 	  success: function(response){
										 		 	 debugger;
								
											 		 if(response.keyword=="success")
											 		 {
											 			CAlert.Success("Employee Added");
											 			 $('#formAddEmployee').form('clear');
											 			
											 			 $('#empDob').val('')
											 		    .attr('type', 'text')
											 		    .attr('type', 'date');
											 			
											 			document.getElementById("empPh").value = null;
											 			 
											 			$('#dlg').dialog('close');        // close the dialog
								                        
											 			$('#EmployeeGrid').datagrid('reload'); 
											 		 }
											 		 else
											 			 {
											 			CAlert.Danger("Employee Not Added");
											 			 }
										 	  	}		
								 	 });
				
						 }
					 else
						 {
						 
						
						  $.ajax({
						        type: "POST",
						        url:"updateEmployee.do",       
						        dataType: 'json',
						        async:false,
						        data:$('#formAddEmployee').serialize(),			  
						        success: function(response){
						 		 	 debugger;
				
							 		 if(response.keyword=="success")
							 		 {
							 			CAlert.Success("Employee Updated");
							 			 $('#formAddEmployee').form('clear');
							 			
							 			 $('#empDob').val('')
							 		    .attr('type', 'text')
							 		    .attr('type', 'date');
							 			
							 			document.getElementById("empPh").value = null;
							 			 
							 			$('#dlg').dialog('close');        // close the dialog
				                        
							 			$('#EmployeeGrid').datagrid('reload'); 
							 		 }
							 		 else
							 			 {
							 			CAlert.Danger("Employee Not Updated");
							 			 }
						 	  	}	
					    	});
						 
						 
						 }
					}
			
				else
					{
					CAlert.Danger("Please enter all values");
					}
		}
		
		
		
		
			
		function newUser(){
		    $('#dlg').dialog('open').dialog('center').dialog('setTitle','ADD NEW EMPLOYEE');		        
		    	
		        
		     
		}

		function destroyUser(){
			debugger;
			var Val="";		
			var opts = $('#EmployeeGrid').datagrid('options');
			
			var row = $('#EmployeeGrid').datagrid('getSelected');	
			$('#EmployeeGrid').datagrid('unselectAll');
            if (row){
            	 Val=row.empId;
            	 debugger;
                $.messager.confirm('Confirm','Are you sure you want to destroy this user?',function(r){
                    if (r){
                    	$.ajax({
					        type: "POST",
					        url:"deleteEmployee.do?key="+Val,       
					        dataType: 'json',
					        success: function(obj)
					        	{		        	
						    	  if(obj.keyword=="success")
						    		  {
						    		  $('#EmployeeGrid').datagrid('reload'); 								    		 
						    		  CAlert.Success("Employee Deleted");								    	  
						    		  }
						    	  else
						    		  {
						    		  CAlert.Danger("Employee Not Deleted");				    	  
						    		  }
					         	 }
					    	  });
                  		  }

                           
                        });
                    }
                
           }
		
		
		function editUser(){
			debugger;
			//var Val="";		
			var opts = $('#EmployeeGrid').datagrid('options');
			
			var row = $('#EmployeeGrid').datagrid('getSelected');	
			$('#EmployeeGrid').datagrid('unselectAll');
            if (row){
            	// Val=row.empId;
            	 debugger;
            	 $('#dlg').dialog('open').dialog('center').dialog('setTitle','EDIT EMPLOYEE');
            	 
            	
            	 for (var i in row) {
            	        $('input[name="'+i+'"]').val(row[i]);
            	        
            	    }
            	  
            	 
            	 
            	 }
                         
                        
                    
           }

		
		function reloadTable(){
			
			$('#EmployeeGrid').datagrid('reload');      
                        
                    
           }

		
		
		
		function doSearch(value,name){
			var rows=gridData;
			
			var opts = $('#EmployeeGrid').datagrid('getColumnFields');
			
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
			    	
			    
			    $('#EmployeeGrid').datagrid('loadData',trows);
		} 	 
        
		
</script>

</head>

<body>

		<!-- DISPLAY TABLE -->
		
		<table class="easyui-datagrid"  title="Employees" fit="true" toolbar="#tbCountry" id="EmployeeGrid" 
		        data-options="url:'EmployeeGridData.do',fitColumns:true,singleSelect:true,idField:'cntKey',striped:true,remoteSort:false">
		    <thead>
		        <tr>
		           
	                 <th data-options="field:'empId',width:100,halign:'center'"><label>Id</label></th>
		             <th data-options="field:'empName',width:100,align:'center',halign:'center'"><label>Name</label></th>
		             <th data-options="field:'empUserName',width:100,align:'center',halign:'center'"><label>UserName</label></th>
		             <th data-options="field:'empPassword',width:100,align:'center',halign:'center'"><label>Password</label></th>
		             <th data-options="field:'empAddress',width:100,align:'center',halign:'center'"><label>Address</label></th>
		             <th data-options="field:'empPh',width:100,align:'center',halign:'center'"><label>Ph</label></th>
		             <th data-options="field:'empDob',width:100,align:'center',halign:'center'"><label>DOB</label></th>
		        </tr>
		    </thead>
		</table>
		<div id="tbCountry" >  
 
	        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">Add New Employee</a> 
	        
	        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyUser()">Remove Employee</a> 
	        
	        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true"  onclick="editUser()">Edit Employee details</a>
	             
         	<span class="textbox easyui-fluid" style="width: 100px;">
	         	<span class="textbox-addon textbox-addon-right" style=" right: 0px; top: 0px;">
		         	<a href="javascript:;" class="textbox-icon icon-search" icon-index="2" tabindex="-1" style="width: 30px; height: 20px;"></a>
	         	</span>
	         	<input id="ss"  onkeyup="doSearch(this.value)" data-enter-as-tab="false" style="width:150px"/>
         	</span>
         	
		  	<a href="javascript:;" class="textbox-icon icon-reload" plain="true"  onclick="reloadTable()" tabindex="-1" style="width: 30px; height: 30px; top: 10px;"></a>
	        
 		</div>
		
		
    
		
		<!--INSERT DIALOG BOX  -->
		
		<div id="dlg" class="easyui-dialog" style="height:550px;width:300px" data-options="closed:true,modal:true,border:'thin',buttons:'#dlg-button'">
				<div class="container">
						
						 <form  method="post" id="formAddEmployee">
								 	 <input type="hidden" id="hidkey" name="empId" />
								    <div class="form-group">
								      <label for="empName">Employee Name:</label>
								      <input type="text" class="form-control" id="empName" placeholder="Enter Name" name="empName" required>
								    </div>
								    <div class="form-group">
								      <label for="empUserName">Employee UserName:</label>
								      <input type="text" class="form-control" id="empUserName" placeholder="Enter UserName" name="empUserName" required>
								    </div>
								    <div class="form-group">
								      <label for="empPassword">Employee Password:</label>
								      <input type="password"  class="form-control" id="empPassword" placeholder="Enter Password" name="empPassword" required> 
								    </div>
								    <div class="form-group">
								      <label for="empDob">Employee DOB:</label>
								      <input type="date" class="form-control" id="empDob" placeholder="Enter DOB" name="empDob"> 
								    </div>
								    <div class="form-group">
								      <label for="empAddress">Employee Address:</label>
								      <input type="text" class="form-control" id="empAddress" placeholder="Enter Address" name="empAddress"> 
								    </div>
								    <div class="form-group">
								      <label for="empPh">Employee Contact Num:</label>
								      <input type="text" class="form-control" id="empPh" placeholder="Enter Number" name="empPh" required> 
								    </div>
								    
								  
						 </form>
				</div>
		
		</div>
		<div id="dlg-button">
	        <a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" name="empAdd" id="empAdd" onclick ="empReg();" style="width:90px">Save</a>
	        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')" style="width:90px">Cancel</a>
   		 </div>

</body>



<!-- Mirrored from www.lab.westilian.com/bingo-admin/login-02.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 12 Jun 2018 09:05:57 GMT -->
</html>