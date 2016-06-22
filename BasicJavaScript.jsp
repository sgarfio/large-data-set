<!DOCTYPE html>
<html lang="en">
   <head>
      <script type="text/javascript" src="CreateData.js"></script>
      <title>Basic Javascript Implementation</title>
   </head>
   <body>
      <p>This is a purely Javascript implementation.
      It uses a timeout callback to load batches of 1000 rows.
      The page stays fairly responsive while additional data is loaded, 
      but it takes quite a while for all data to load. 
      The batch size and timeout values are symbolic constants to help with performance tuning.</p>
      
      <table border='1'>
         <thead><tr><th>ID</th><th>Timestamp</th></tr></thead>
         <tbody id="body"></tbody>
      </table>
      <script type="text/javascript">

         var BATCH_SIZE = 1000;
         var TIMEOUT = 10;

         var data = createData();
         var body = document.getElementById("body");
         processBatch(0);
         
         function processBatch(batch)
         {
            var start = batch * BATCH_SIZE;
            var end = start + BATCH_SIZE;
            var rows = [];
            var slice = data.slice(start, end);
            var lastBatch = false;
            
            if(end > data.length)
            {
               end = data.length;
               lastBatch = true;
            }
            for(var i = 0; i < slice.length; ++i)
            {
               rows.push("<tr><td>" + slice[i].id + "</td><td>" + slice[i].timestamp + "</td></tr>");
            }
            body.insertAdjacentHTML("beforeend", rows.join(''));
            if(!lastBatch)
            {
               window.setTimeout(function(){processBatch(batch + 1);}, TIMEOUT);
            }
         }
      </script>
   </body>
</html>