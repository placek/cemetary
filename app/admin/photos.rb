ActiveAdmin.register Photo do
  index do
    column :sepulchre
    column "Photo" do |photo|
      link_to(image_tag(photo.photo.url(:thumb), height: "100"), admin_photo_path(photo))
    end
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :sepulchre
      f.input :photo, as: :file, hint: f.template.image_tag(f.object.photo.url(:thumb))
    end
    f.buttons
  end
end
