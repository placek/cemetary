ActiveAdmin.register Sepulchre do
  index do
    column :decedent
    column :birth
    column :burial
    column :history
    default_actions
  end

  filter :decedent
  filter :burial
  filter :birth

  form do |f|
    f.inputs do
      f.input :decedent
      f.input :birth, as: :string
      f.input :burial, as: :string
      f.input :history
      f.input :part
    end
    f.buttons
  end
end
