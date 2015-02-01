// track a client-side event using the Blocmetrics analytics service
// var _bm_event = {
//   name: "sale",
//   property_1: "some value",
//   property_2: "some other value"
// }

// var _bm_request = new XMLHttpRequest();
// _bm_request.open("POST", "http://blocmetrics-vdynmx.herokuapps.com/events.json", true);
// _bm_request.setRequestHeader('Content-Type', 'application/json');
// _bm_request.onreadystatechange = function() {
//   // this function runs when the Ajax request changes state.
//   // https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest
// };
// _bm_request.send(JSON.stringify(_bm_event));

var trackEvent = function(name, eventtime) {
  var _bm_event = {
    name: name,
    eventtime: eventtime
  }

  var _bm_request = $.ajax({
    url: "https://secure-earth-4066.herokuapp.com/events",
    method: "post",
    data: {event: _bm_event}
  })

  _bm_request.send(JSON.stringify(_bm_event));
}