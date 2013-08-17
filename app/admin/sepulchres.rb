ActiveAdmin.register Sepulchre do
  index do
    column :part
    column :quarter
    column :number
    column :name
    column :surname
    column :family_name
    column :birth_date
    column :burial_date
    column :birth_location
    column :profession
    column :complex
    column :gravestone do |sepulchre|
      truncate(strip_tags(sepulchre.gravestone), length: 50)
    end
    column :description do |sepulchre|
      truncate(strip_tags(sepulchre.description), length: 50)
    end
    default_actions
  end

  filter :name
  filter :surname
  filter :family_name
  filter :complex
  filter :burial_date
  filter :birth_date

  form do |f|
    f.inputs do
      f.input :name
      f.input :surname
      f.input :family_name
      f.input :birth_date
      f.input :burial_date
      f.input :birth_location
      f.input :profession
      f.input :complex
      f.input :gravestone
      f.input :description
      f.input :quarter
      f.input :number
    end
    f.buttons
  end
end
