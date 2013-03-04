ActiveAdmin.register Post do
  index do
    column :title
    column :body
    default_actions
  end

  filter :title
  filter :body

  form do |f|
    f.inputs do
      f.input :title
      f.input :body
    end
    f.buttons
  end
end
