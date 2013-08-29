//= require fancybox

$ ->
  $("section.sepulchre aside figure a").fancybox()

  $("figure.map svg g").attr("transform", "scale(0.2)")
  $("figure.map svg").attr("width", "100px").attr("height", "100px")
  $("path#" + $("figure.map").attr("data-number")).css({fill: "#093", stroke: "#093"})
