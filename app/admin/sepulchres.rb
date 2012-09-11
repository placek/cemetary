ActiveAdmin.register Sepulchre do
  menu label: "Kwatery"

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
      f.input :birth
      f.input :burial
      f.input :history
    end
    f.buttons
  end
end
