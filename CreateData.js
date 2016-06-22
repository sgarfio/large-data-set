var DATA_SIZE = 300000;
var createData = function() 
{
   var list = new Array(DATA_SIZE);
   var now = new Date().getTime();

   for (var i = 0; i < DATA_SIZE; i++) 
   {
      list[i] = 
      {
         id: i,
         timestamp: Math.round(Math.random() * now)
      };
   }
 
   return list;
};
         
