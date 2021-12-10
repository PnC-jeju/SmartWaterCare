const dayjs = require('dayjs');
const timeNow = () => dayjs().format('YYYY-MM-DD HH:mm:ss');
const timeTail = () => dayjs().subtract(1, 'm').format('YYYY-MM-DD HH:mm:ss');

const chartAxis = {
  x: {
    type: 'timeseries',
    min: timeTail(),
    max: timeNow(),
    tick: {
      fit: false,
      rotate: -30,
      format: '%Y-%m-%d %H:%M:%S',
    }
  }
}

const chartData = {
  x: 'x',
  xFormat: '%Y-%m-%d %H:%M:%S',
  columns: [
    ['x',],
    ['data1',]
  ]
}

let chart = c3.generate({
    bindto: '#chart',
    data: chartData,
    axis: chartAxis,
});


/* 
 * function fetchdata(){
 *  $.ajax({
 *   url: '/api/v1/realtimedata',
 *    type: 'get',
 *    
 *    success: function(response){
 *      var value = [];
 *      for (var index in response) {
 *        console.log(response[index]);
 *        value.push(response[index]);
 *      }
 *      var chart = c3.generate({
 *        bindto: "#flowrate_linechart",
 *        data: {
 * 	 json: value,
 * 	 keys: {
 * 	   value: ['flowrate'] 
 * 	 },
 *        },
 *        axis: {
 * 	 x: {
 * 	   tick: {
 * 	     culling: {
 * 	       max:20
 * 	     }
 * 	   }
 * 	 }
 *        }
 *      });
 * 
 *      var chart = c3.generate({
 *        bindto: "#totalvolume_linechart",
 *        data: {
 * 	 json: value,
 * 	 keys: {
 * 	   value: ['totalvolume'] 
 * 	 },
 *        },
 *        axis: {
 * 	 x: {
 * 	   tick: {
 * 	     culling: {
 * 	       max:20
 * 	     }
 * 	   }
 * 	 }
 *        }
 *      });
 *      
 * }})} */

$(document).ready(function(){
  /* setInterval(fetchdata,2000); */
  /* fetchdata(); */
  setInterval(() => {
     
    fetch('/api/v1/realtimedata')
      .then(response => {
	var flowratevalue;
	for (var index in response) {
          console.log(response[index]);
	}
	chart.axis.min({x: timeTail()});
	chart.axis.max({x: timeNow()});

	chartData.columns[0].push(timeNow());
	chartData.columns[1].push(Math.random());
	chart.load({columns: chartData.columns});
      })
      .catch(error => {

      });


  }, 1000)  
});
