module ApplicationHelper
  def navigable_header_link
    link_to "Stary Cmentarz", root_path, id: "to_homepage"
  end

  def anchor(name)
    content_tag(:a, "", name: name, id: name)
  end
end
