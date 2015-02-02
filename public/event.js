var trackEvent = function(name, eventtime) {
  var _bm_event = {
    name: name,
    eventtime: eventtime
  }

  var _bm_request = $.ajax({
    url: "http://localhost:3001/api/v1/events.json",
    method: "post",
    dataType: "json",
    data: {event: _bm_event},
    crossDomain: true,
    xhrFields: {withCredentials: false}

  })
} 