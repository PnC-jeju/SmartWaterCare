/* switcher event handler */
const auto_refresh_checkbox = document.getElementById('switcher');

auto_refresh_checkbox.addEventListener('change', function() {
  if (this.checked) {
    setSwitcher(true)    
  } else {
    debugger;
    setSwitcher(false)
  }
});

function setSwitcher(p1) {
  debugger;
  $.ajax({
    url: "/pressure/change_value_switcher",
    type: "get",
    data: { switcher_value: p1 },
    success: function (data)
    {
      alert("success_ajax");
    },
    error: function(request,status,error)
    {
      alert("error_ajax");
    }});
}

/* html 문서가load된 이후 */
$(function() {
  /* html에서 switcher라는 auto-refresh가 checked되어 있는지 확인 */
  var auto_refresh_value = $("#switcher").prop("checked");
  if(auto_refresh_value) {
    alert("load data");
  }else {
    alert("load data2");
  }
});

