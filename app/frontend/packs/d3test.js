const dayjs = require('dayjs');
const timeNow = () => dayjs().format('YYYY-MM-DD HH:mm:ss');
const timeTail = () => dayjs().subtract(1, 'm').format('YYYY-MM-DD HH:mm:ss');
const chart_period= 1000;

/* temperature */
let ChartAxis = { x: { type: 'timeseries', min: timeTail(), max: timeNow(), tick: { fit: false, rotate: -30, format: '%Y-%m-%d %H:%M:%S', }}}
let ChartData = { x: 'x', xFormat: '%Y-%m-%d %H:%M:%S', columns: [ ['x',], ['flowrate',], ['pressure',], ['temperature',], ['totalvolume',] ], type: 'area-step'}
let Chart = c3.generate({ bindto: '#unified_linechart', data: ChartData, axis: ChartAxis,});

/* function realtimeInterval()
 * {
 *     setInterval(() => {
 *     $.ajax({
 *       url: '/api/v1/realtimedata',
 *       type: 'post',
 *       data: {
 * 	chosen_dong: "flowrate",
 * 	chosen_roomtype: "flowrate",	
 * 	chosen_datatype: "flowrate"
 *       },
 *       error: function (error) {
 *  	console.log(error);
 *       },
 *       success: function(response){
 *  	flowratevalue = response['flowrate'];
 *  	totalvolumevalue = response['totalvolume'];
 *  	temperaturevalue = response['temperature'];
 *  	pressurevalue = response['pressure']; */

	/* flowchart */
 	/* flowrateChart.axis.min({x: timeTail()});
 	   flowrateChart.axis.max({x: timeNow()});
	   
 	   flowrateChartData.columns[0].push(timeNow());
 	   flowrateChartData.columns[1].push(flowratevalue);
 	   flowrateChart.load({columns: flowrateChartData.columns}); */

	/* totalvolume */
/* totalvolumeChart.axis.min({x: timeTail()});
   totalvolumeChart.axis.max({x: timeNow()});
   
   totalvolumeChartData.columns[0].push(timeNow());
   totalvolumeChartData.columns[1].push(totalvolumevalue);
   totalvolumeChart.load({columns: totalvolumeChartData.columns}); */

	/* pressurechart */
/* pressureChart.axis.min({x: timeTail()});
   pressureChart.axis.max({x: timeNow()});
   
   pressureChartData.columns[0].push(timeNow());
   pressureChartData.columns[1].push(pressurevalue);
   pressureChart.load({columns: pressureChartData.columns});
 */

	/* temperaturechart */
/* temperatureChart.axis.min({x: timeTail()});
   temperatureChart.axis.max({x: timeNow()});
   
   temperatureChartData.columns[0].push(timeNow());
   temperatureChartData.columns[1].push(temperaturevalue);
   temperatureChart.load({columns: temperatureChartData.columns});
   },
   complete: function() {
   console.log("end");
   }
   });
   }, 1000);  
   } */


function realtimeInterval()
{
    setInterval(() => {
    $.ajax({
      url: '/api/v1/realtimedata',
      type: 'post',
      data: {
	chosen_dong: "flowrate",
	chosen_roomtype: "flowrate",	
	chosen_datatype: "flowrate"
      },
      error: function (error) {
 	console.log(error);
      },
      success: function(response){
 	flowratevalue = response['flowrate'];
 	pressurevalue = response['pressure'];
 	totalvolumevalue = response['totalvolume'];
 	temperaturevalue = response['temperature'];	
	/* flowchart */
 	Chart.axis.min({x: timeTail()});
 	Chart.axis.max({x: timeNow()});
	
 	ChartData.columns[0].push(timeNow());
 	ChartData.columns[1].push(flowratevalue);
 	ChartData.columns[2].push(pressurevalue);
 	ChartData.columns[3].push(temperaturevalue);
 	/* ChartData.columns[4].push(totalvolumevalue);		 */

 	Chart.load({columns: ChartData.columns});
      },
      complete: function() {
 	console.log("end");
      }
    });
  }, chart_period);  
}

$(document).ready(function(){
  realtimeInterval();
});  

 
