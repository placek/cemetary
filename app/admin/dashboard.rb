ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: "Pulpit" do
    columns do
      column do
        panel "Cmentarz ewangelicko-augsburski" do
          h5 "Ilość kwater: #{Part.find("lutheran").quarters.count}"
          h5 "Ilość nagrobków: #{Part.find("lutheran").sepulchres.count}"
        end
        panel "Cmentarz katolicki" do
          h5 "Ilość kwater: #{Part.find("catholic").quarters.count}"
          h5 "Ilość nagrobków: #{Part.find("catholic").sepulchres.count}"
        end
        panel "Cmentarz prawosławny" do
          h5 "Ilość kwater: #{Part.find("orthodox").quarters.count}"
          h5 "Ilość nagrobków: #{Part.find("orthodox").sepulchres.count}"
        end
      end
      column do
        panel "Posty" do
          h5 "Ilość postów: #{Post.count}"
        end
        panel "Admini" do
          h5 "Ilość adminów: #{AdminUser.count}"
        end
      end
    end
  end
end
