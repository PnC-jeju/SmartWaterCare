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
    ['flowrate',]
  ],
  /* type: 'spline-area' */
}

let chart = c3.generate({
    bindto: '#flowrate_linechart',
    data: chartData,
    axis: chartAxis,
});

/* cannot break parts of this function cause ajax is not sync function */
function flowrateInterval() {
  setInterval(() => {
    $.ajax({
      url: '/api/v1/realtimedata',
      type: 'get',
      error: function (error) {
 	console.log(error);
      },
      success: function(response){
 	var flowratevalue;
 	for (var index in response) {
          console.log(response[index]);
 	  obj = response[index];
 	  flowratevalue = obj['flowrate'];
 	}
 	console.log(response);
 	chart.axis.min({x: timeTail()});
 	chart.axis.max({x: timeNow()});
	
 	chartData.columns[0].push(timeNow());
 	chartData.columns[1].push(flowratevalue);
 	chart.load({columns: chartData.columns});
      },
      complete: function() {
 	console.log("end");
      }
    });
  }, 1000);  
}

function totalvolumeInterval() {
  setInterval(() => {
    $.ajax({
      url: '/api/v1/realtimedata',
      type: 'get',
      error: function (error) {
 	console.log(error);
      },
      success: function(response){
 	var flowratevalue;
 	for (var index in response) {
          console.log(response[index]);
 	  obj = response[index];
 	  flowratevalue = obj['flowrate'];
 	}
 	console.log(response);
 	chart.axis.min({x: timeTail()});
 	chart.axis.max({x: timeNow()});
	
 	chartData.columns[0].push(timeNow());
 	chartData.columns[1].push(flowratevalue);
 	chart.load({columns: chartData.columns});
      },
      complete: function() {
 	console.log("end");
      }
    });
  }, 1000);  
}

$(document).ready(function(){
  flowrateInterval();
  totalvolumeInterval();
 });  

