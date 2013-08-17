$ ->
  $("#lutheran_part_link, #orthodox_part_link, #catholic_part_link").hide()

  $("#lutheran_part, #orthodox_part, #catholic_part").mouseenter ->
    $("#" + $(this).attr("id") + "_link").show()
    $(this).parent().append($(this))

  $("#lutheran_part, #orthodox_part, #catholic_part").mouseout ->
    $("#" + $(this).attr("id") + "_link").hide()

  $("#lutheran_part, #orthodox_part, #catholic_part").click ->
    if typeof($("#" + $(this).attr("id") + "_link a").attr("href")) != "undefined"
      window.location.href = $("#" + $(this).attr("id") + "_link a").attr("href")
