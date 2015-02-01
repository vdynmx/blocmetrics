var trackEvent = function(name, eventtime) {
  var _bm_event = {
    name: name,
    eventtime: eventtime
  }

  var _bm_request = $.ajax({
    url: "https://secure-earth-4066.herokuapp.com/events.json",
    method: "post",
    data: {event: _bm_event}
  })

  _bm_request.send(JSON.stringify(_bm_event));
}