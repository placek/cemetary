$ ->
  $(".quarter").click ->
    id = $(this).attr("id").split("quarters_")[1]
    window.location.href = $("#quarter_link_" + id).attr("href")

  $(".sepulchres .results dt a").mouseover ->
    $("#quarters_" + $(this).attr("data-quarters")).css({ fill: "#c2e0c2", stroke: "#009933" })
    true

  $(".sepulchres .results dt a").mouseout ->
    $("#quarters_" + $(this).attr("data-quarters")).css({ fill: "#eeeeee", stroke: "#cccccc" })
    true

  true
