var trackEvent = function(name, eventtime) {
  var _bm_event = {
    name: name,
    eventtime: eventtime
  }

  var _bm_request = $.ajax({
    url: "https://secure-earth-4066.herokuapp.com/events.json",
    method: "post",
    dataType, "json",
    data: {event: _bm_event},
    crossDomain: true,
    xhrFields: {withCredentials: true}

  })

  _bm_request.send(JSON.stringify(_bm_event));
}