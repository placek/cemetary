//= require active_admin/base
//= require tinymce


$(function() {
  tinyMCE.init({
    mode : "textareas",
    menubar : false,
    toolbar_items_size : "small",
    language : "pl_PL",
    toolbar : "undo redo | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist | link image",
    plugins : "link image",
  });
});
