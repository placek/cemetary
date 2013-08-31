$ ->

  $(".sepulchres .results dt").mouseover ->
    $("#" + $(this).attr("data-number")).css({ fill: "#c2e0c2", stroke: "#009933" })

  $(".sepulchres .results dt").mouseout ->
    $("#" + $(this).attr("data-number")).css({ fill: "#eeeeee", stroke: "#cccccc" })

  $(document).tooltip({ position: { my: "right middle", at: "left+1 middle" }})

  $("#search").autocomplete({
      minLength: 3,
      source: (request, response) ->
        $.ajax(
          url: window.location.href.split("?")[0],
          dataType: "json",
          data: { search: request.term + "*" },
        ).done((data) ->
          response(data)
        )
    })
