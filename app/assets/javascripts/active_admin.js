//= require active_admin/base
//= require tinymce


$(function() {
  tinyMCE.init({
    mode : "textareas",
    inline : true,
    menubar : false,
    toolbar_items_size : "small",
    toolbar : "undo redo | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist | link image",
    plugins : "link image",
  });
});
