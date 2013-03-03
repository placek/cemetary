$ ->
  $("#content p").hide()

  $("#lutheran_part, #orthodox_part, #catholic_part").mouseenter ->
    $(this).attr("class", "selected")
    $(this).parent().append($(this))

  $("#lutheran_part, #orthodox_part, #catholic_part").mouseleave ->
    $(this).attr("class", "")

  $("#lutheran_part, #orthodox_part, #catholic_part").click ->
    window.location.href = $("#" + $(this).attr("id") + "_url").attr("href");
