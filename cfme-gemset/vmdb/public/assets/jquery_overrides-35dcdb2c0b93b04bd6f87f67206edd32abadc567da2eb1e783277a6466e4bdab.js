function logError(r){return function(e){try{return r(e)}catch(r){return"undefined"!=typeof console&&"undefined"!=typeof console.error&&(console.error("exception caught evaling RJS"),console.error(r),console.debug("script follows:",e)),e}}}jQuery.jsonPayload=function(r,e){var o=jQuery.parseJSON(r);return o.explorer?ManageIQ.explorer.process(o):e(r)},$.ajaxSetup({accepts:{json:"text/javascript, application/javascript, application/ecmascript, application/x-ecmascript"},contents:{json:/application\/json/},converters:{"text json":logError(function(r){return jQuery.jsonPayload(r,function(r){return jQuery.parseJSON(r)})}),"text script":logError(function(r){return r.match(/^{/)?jQuery.jsonPayload(r,function(r){return r}):(jQuery.globalEval(r.slice('throw "error";'.length)),r)})}});