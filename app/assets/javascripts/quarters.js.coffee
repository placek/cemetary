$ ->

  $(".sepulchres .results dt a").mouseover ->
    $("#" + $(this).attr("data-number")).css({ fill: "#c2e0c2", stroke: "#009933" })
    true

  $(".sepulchres .results dt a").mouseout ->
    $("#" + $(this).attr("data-number")).css({ fill: "#eeeeee", stroke: "#cccccc" })
    true
