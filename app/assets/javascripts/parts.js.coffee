$ ->
  $(".quarter").click ->
    id = $(this).attr("id").split("quarters_")[1]
    window.location.href = $("#quarter_link_" + id).attr("href")

  $(".sepulchres .results dt").mouseover ->
    $("#quarters_" + $(this).attr("data-quarters")).css({ fill: "#c2e0c2", stroke: "#009933" })

  $(".sepulchres .results dt").mouseout ->
    $("#quarters_" + $(this).attr("data-quarters")).css({ fill: "#eeeeee", stroke: "#cccccc" })

  $(document).tooltip({ position: { my: "right middle", at: "left+500 middle" }})

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
