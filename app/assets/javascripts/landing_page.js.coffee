$ ->
  $("#lutheran_part_link, #orthodox_part_link, #catholic_part_link").hide()
  $("#lutheran_part").attr("transform", "translate(-2,2)")
  $("#orthodox_part").attr("transform", "translate(0,2)")
  $("#catholic_part").attr("transform", "translate(2,0)")

  $("#lutheran_part, #orthodox_part, #catholic_part").mouseover ->
    $("#" + $(this).attr("id") + "_link").show()

  $("#lutheran_part, #orthodox_part, #catholic_part").mouseout ->
    $("#" + $(this).attr("id") + "_link").hide()

  $("#lutheran_part, #orthodox_part, #catholic_part").click ->
    if typeof($("#" + $(this).attr("id") + "_link a").attr("href")) != "undefined"
      window.location.href = $("#" + $(this).attr("id") + "_link a").attr("href")
