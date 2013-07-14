$ ->
  $(".quarter").click ->
    id = $(this).attr("id").split("quarters_")[1]
    window.location.href = $("#quarter_link_" + id).attr("href")
