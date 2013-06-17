module ApplicationHelper
  def anchor(name)
    content_tag(:a, "", name: name, id: name)
  end

  def static_map_for_collection collection, options = { width: 500, height: 500, marker_color: "0x009933" }
    url = "http://maps.googleapis.com/maps/api/staticmap?sensor=false&center=%.6f,%.5f&zoom=17&maptype=roadmap" % map_center(collection)
    url << ("&size=%dx%d" % [options[:width], options[:height]])
    collection.each_with_index do |item, index|
      url << ("&markers=color:%s" % options[:marker_color])
      url << "%7C"
      url << ("label:%d" % (index + 1))
      url << "%7C"
      url << ("%.5f,%.5f" % [item.lat, item.lng])
    end
    image_tag(url)
  end

  def dynamic_map_bounds collection
    hidden_field_tag :lat_min, collection.map(&:lat).min
    hidden_field_tag :lat_max, collection.map(&:lat).max
    hidden_field_tag :lng_min, collection.map(&:lng).min
    hidden_field_tag :lng_max, collection.map(&:lng).max
  end

  protected

  def map_scope collection
    [[collection.map(&:lat).min, collection.map(&:lat).max],
     [collection.map(&:lng).min, collection.map(&:lng).max]]
  end

  def map_center collection
    lat_scope, lng_scope = map_scope(collection)
    [lat_scope.first + (lat_scope.last - lat_scope.first) / 2.0,
     lng_scope.first + (lng_scope.last - lng_scope.first) / 2.0]
  end
end
