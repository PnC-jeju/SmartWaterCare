const dayjs = require('dayjs');
const timeNow = () => dayjs().format('YYYY-MM-DD HH:mm:ss');
const timeTail = () => dayjs().subtract(1, 'm').format('YYYY-MM-DD HH:mm:ss');
const flowchart_period=800;
const totalvolumechart_period=7000;
const pressurechart_period=2000;
const temperaturechart_period=7000;

/* I just wanted to use class or reuse sth, but it's not easy and I've no time to be done so just done it as follows */
/* flowchart */
let flowrateChartAxis = { x: { type: 'timeseries', min: timeTail(), max: timeNow(), tick: { fit: false, rotate: -30, format: '%Y-%m-%d %H:%M:%S', }}}
let flowrateChartData = { x: 'x', xFormat: '%Y-%m-%d %H:%M:%S', columns: [ ['x',], ['flowrate',] ], type: 'line'}
let flowrateChart = c3.generate({ bindto: '#flowrate_linechart', data: flowrateChartData, axis: flowrateChartAxis,});

/* totalvolume */
let totalvolumeChartAxis = { x: { type: 'timeseries', min: timeTail(), max: timeNow(), tick: { fit: false, rotate: -30, format: '%Y-%m-%d %H:%M:%S', }}}
let totalvolumeChartData = { x: 'x', xFormat: '%Y-%m-%d %H:%M:%S', columns: [ ['x',], ['totalvolume',] ], type: 'area'}
let totalvolumeChart = c3.generate({ bindto: '#totalvolume_linechart', data: totalvolumeChartData, axis: totalvolumeChartAxis,});

/* pressure */
let pressureChartAxis = { x: { type: 'timeseries', min: timeTail(), max: timeNow(), tick: { fit: false, rotate: -30, format: '%Y-%m-%d %H:%M:%S', }}}
let pressureChartData = { x: 'x', xFormat: '%Y-%m-%d %H:%M:%S', columns: [ ['x',], ['pressure',] ], type: 'spline'}
let pressureChart = c3.generate({ bindto: '#pressure_linechart', data: pressureChartData, axis: pressureChartAxis,});


/* temperature */
let temperatureChartAxis = { x: { type: 'timeseries', min: timeTail(), max: timeNow(), tick: { fit: false, rotate: -30, format: '%Y-%m-%d %H:%M:%S', }}}
let temperatureChartData = { x: 'x', xFormat: '%Y-%m-%d %H:%M:%S', columns: [ ['x',], ['temperature',] ], type: 'area-step'}
let temperatureChart = c3.generate({ bindto: '#temperature_linechart', data: temperatureChartData, axis: temperatureChartAxis,});


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

function realFlowrateInterval()
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
	/* flowchart */
 	flowrateChart.axis.min({x: timeTail()});
 	flowrateChart.axis.max({x: timeNow()});
	
 	flowrateChartData.columns[0].push(timeNow());
 	flowrateChartData.columns[1].push(flowratevalue);
 	flowrateChart.load({columns: flowrateChartData.columns});
      },
      complete: function() {
 	console.log("end");
      }
    });
  }, flowchart_period);  
}


function realPressureInterval()
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
 	pressurevalue = response['flowrate'];
	/* flowchart */
 	pressureChart.axis.min({x: timeTail()});
 	pressureChart.axis.max({x: timeNow()});
	
 	pressureChartData.columns[0].push(timeNow());
 	pressureChartData.columns[1].push(pressurevalue);
 	pressureChart.load({columns: pressureChartData.columns});
      },
      complete: function() {
 	console.log("end");
      }
    });
  }, pressurechart_period);  
}


function realTotalvolumeInterval()
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
 	totalvolumevalue = response['totalvolume'];
	/* flowchart */
 	totalvolumeChart.axis.min({x: timeTail()});
 	totalvolumeChart.axis.max({x: timeNow()});
	
 	totalvolumeChartData.columns[0].push(timeNow());
 	totalvolumeChartData.columns[1].push(totalvolumevalue);
 	totalvolumeChart.load({columns: totalvolumeChartData.columns});
      },
      complete: function() {
 	console.log("end");
      }
    });
  }, totalvolumechart_period);  
}


function realTemperatureInterval()
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
 	temperaturevalue = response['temperature'];
	/* flowchart */
 	temperatureChart.axis.min({x: timeTail()});
 	temperatureChart.axis.max({x: timeNow()});
	
 	temperatureChartData.columns[0].push(timeNow());
 	temperatureChartData.columns[1].push(temperaturevalue);
 	temperatureChart.load({columns: temperatureChartData.columns});
      },
      complete: function() {
 	console.log("end");
      }
    });
  }, temperaturechart_period);  
}

$(document).ready(function(){
  realFlowrateInterval();
  realTotalvolumeInterval();
  realPressureInterval();
  realTemperatureInterval();
  /* realtimeInterval(); */
});  

 
