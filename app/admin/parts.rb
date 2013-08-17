ActiveAdmin.register Part do
  index do
    column :slug
    column :name
    column :avaliable
    default_actions
  end

  filter :name

  form do |f|
    f.inputs do
      f.input :name
      f.input :avaliable
    end
    f.buttons
  end
end
