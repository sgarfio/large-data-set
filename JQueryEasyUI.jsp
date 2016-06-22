<!DOCTYPE html>
<html lang="en">
   <head>
      <link rel="stylesheet" type="text/css" href="http://www.jeasyui.com/easyui/themes/default/easyui.css">
      <script type="text/javascript" src="CreateData.js"></script>
      <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
	  <script type="text/javascript" src="http://www.jeasyui.com/easyui/jquery.easyui.min.js"></script>
	  <script type="text/javascript" src="http://www.jeasyui.com/easyui/datagrid-scrollview.js"></script>
      <title>JQuery EasyUI Implementation</title>
   </head>
   <body>
      <p>This is a JQuery EasyUI example. 
      This implementation loads very quickly. 
      Rows are loaded into the DOM as the user scrolls, 
      so there is a bit of lag when the user scrolls quickly, 
      but it is minimal. This implementation requires JQuery 
      as well as an additional open source JS library called EasyUI.</p>
      
      <table id="table" class="easyui-datagrid" style="width:300px;height:800px"
         data-options="view:scrollview,rownumbers:false,singleSelect:true,
		 autoRowHeight:false,pageSize:50">
         <thead><tr><th field="id" width="80">ID</th><th field="timestamp" width="200">Timestamp</th></tr></thead>
      </table>
      <script type="text/javascript">
         $(function()
         {
            loadLocal();
         });
         
         function loadLocal()
         {
            var data = createData();
            $("#table").datagrid("loadData", data);
         }
         
      </script>
   </body>
</html>