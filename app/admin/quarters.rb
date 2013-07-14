ActiveAdmin.register Quarter do
  index do
    column :part
    column :slug
    column :name
    default_actions
  end

  filter :name

  form do |f|
    f.inputs do
      f.input :name
      f.input :part
    end
    f.buttons
  end
end
