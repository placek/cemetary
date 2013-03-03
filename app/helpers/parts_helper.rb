module PartsHelper
  def link_to_part part
    link_to(t("links.#{part.slug}_part"), part_path(part), id: "#{part.slug}_part_url")
  end
end
