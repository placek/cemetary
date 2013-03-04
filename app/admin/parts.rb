ActiveAdmin.register Part do
  index do
    column :slug
    column :name
    default_actions
  end

  filter :name

  form do |f|
    f.inputs do
      f.input :name
    end
    f.buttons
  end
end
