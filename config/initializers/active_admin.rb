ActiveAdmin.setup do |config|
  config.site_title = "Cmentarz 2.0"
  config.authentication_method = :authenticate_admin_user!
  config.current_user_method = :current_admin_user
  config.logout_link_path = :destroy_admin_user_session_path
  config.logout_link_method = :post
  config.batch_actions = true
  config.register_javascript "tinymce.js"
  config.register_javascript "active_admin.js"
  config.allow_comments = false
end
