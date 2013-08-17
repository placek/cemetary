ActiveAdmin.register Post do
  index do
    column :title
    column :body do |post|
      truncate(strip_tags(post.body), length: 200)
    end
    default_actions
  end

  filter :title
  filter :body

  form do |f|
    f.inputs do
      f.input :title
      f.input :body, input_html: { class: "tinymce" }
    end
    f.buttons
  end
end
