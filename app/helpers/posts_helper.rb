module PostsHelper
  def truncated_post_body post, length = 300
    truncate(strip_tags(post.body), length: length)
  end

  def publish_on_facebook post
    url = "http://www.facebook.com/sharer.php?u=#{post_url(post)}"
    link_to(image_tag(image_path("social_media/facebook.png")), url, target: "_blank")
  end

  def publish_on_google_plus post
    url = "https://plus.google.com/share?url=#{post_url(post)}"
    link_to(image_tag(image_path("social_media/google.png")), url, target: "_blank")
  end

  def publish_on_twitter post
    url = "http://twitter.com/share?text=#{post_url(post)}"
    link_to(image_tag(image_path("social_media/twitter.png")), url, target: "_blank")
  end
end
