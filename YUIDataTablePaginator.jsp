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
      <title>YUI Implementation with Pagination</title>
   </head>
   <body>
      <p>This is a YUI DataTable example with pagination. 
      Note that YUI can not handle very large amounts of data onto a single page. 
      Therefore the "Show All" default option is not available, 
      and the maximum number of items the user is allowed to show at one time is 1000. 
      This implementation is quite slow. Requires a couple of Yahoo open-source JS libraries.</p>
      
      <div id="container" class="yui3-skin-sam">
         <div id="simple"></div>
      </div>
      <script type="text/javascript">

         var dataSet = createData();
         var colDefs = [{key: "id", label: "ID"}, {key: "timestamp", label: "Timestamp"}];
         
         YUI().use("datatable", "datatable-paginator", "datatype-number", function (Y) 
         {
            var dataTable = new Y.DataTable(
            {
               columns: colDefs,
               data: dataSet,
               rowsPerPage: 10,
               paginatorLocation: ["header", "footer"],
               pageSizes: [10, 50, 100, 1000] // Can't load very large amounts onto one page!
            });

            dataTable.render("#simple");

         });         
      </script>
   </body>
</html>