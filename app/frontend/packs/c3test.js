function fetchdata(){
 $.ajax({
  url: '/api/v1/realtimedata',
   type: 'get',
   
   success: function(response){
     var value = [];
     for (var index in response) {
       console.log(response[index]);
       value.push(response[index]);
     }
     // Perform operation on the return value
     
     var chart = c3.generate({
       bindto: "#flowrate_linechart",
       data: {
	 json: value,
	 keys: {
	   /* value: ['flowrate', 'totalvolume'] */
	   value: ['flowrate'] 
	 },
       },
       axis: {
	 x: {
	   tick: {
	     culling: {
	       max:10
	     }
	   }
	 }
       }
     });

     var chart = c3.generate({
       bindto: "#totalvolume_linechart",
       data: {
	 json: value,
	 keys: {
	   /* value: ['flowrate', 'totalvolume'] */
	   value: ['totalvolume'] 
	 },
       },
       axis: {
	 x: {
	   tick: {
	     culling: {
	       max:10
	     }
	   }
	 }
       }
     });
     
}})}

$(document).ready(function(){
  setInterval(fetchdata,1000);
  /* fetchdata(); */
});
