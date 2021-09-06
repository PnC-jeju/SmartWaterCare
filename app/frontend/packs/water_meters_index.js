/* switcher event handler */
const auto_refresh_checkbox = document.getElementById('switcher');

auto_refresh_checkbox.addEventListener('change', function() {
  if (this.checked) {
    alert("turned on...[pressure auto refresh-by event]");
  } else {
    alert("turned off...[pressure auto refresh-by event]");
  }
});

/* html 문서가load된 이후 */
$(function() {
  /* html에서 switcher라는 auto-refresh가 checked되어 있는지 확인 */
  var auto_refresh_value = $("#switcher").prop("checked");
  if(auto_refresh_value) {
        alert("turned on...[auto refresh-by loading]");
  }else {
        alert("turned off...[auto refresh-by loading]");
  }
});

