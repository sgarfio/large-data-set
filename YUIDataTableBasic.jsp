<!DOCTYPE html>
<html lang="en">
   <head>
      <link type="text/css" rel="stylesheet" href="http://yui.yahooapis.com/2.9.0/build/datatable/assets/skins/sam/datatable.css">
      <script src="http://yui.yahooapis.com/3.18.1/build/yui/yui-min.js"></script>
      <script type="text/javascript" src="CreateData.js"></script>
      <script src="http://yui.yahooapis.com/2.9.0/build/yahoo-dom-event/yahoo-dom-event.js"></script>
      <script src="http://yui.yahooapis.com/2.9.0/build/element/element-min.js"></script>
      <script src="http://yui.yahooapis.com/2.9.0/build/datasource/datasource-min.js"></script>
      <script src="http://yui.yahooapis.com/2.9.0/build/datatable/datatable.js"></script>
      <title>YUI Basic Implementation</title>
   </head>
   <body>
      <p>This is a basic YUI DataTable example. 
      Note that YUI can not handle very large amounts of data. 
      The page crashes starting around 270,000 records. 
      This implementation is quite slow even with 100,000 records. 
      Requires a couple of Yahoo open-source JS libraries.</p>
      
      <div id="container" class="yui3-skin-sam">
         <div id="simple"></div>
      </div>
      <script type="text/javascript">

         var dataSet = createData();
         var colDefs = [{key: "id", label: "ID"}, {key: "timestamp", label: "Timestamp"}];
         
         YUI().use("datatable", function (Y) 
         {
            var dataTable = new Y.DataTable({
               columns: colDefs,
               data: dataSet
            });

            dataTable.render("#simple");

         });         
      </script>
   </body>
</html>