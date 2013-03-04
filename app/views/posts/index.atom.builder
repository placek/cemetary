atom_feed language: "pl-PL" do |feed|
  feed.title [t("application_name"), t("links.news")].join(" - ")
  feed.updated @posts.first.created_at

  @posts.each do |post|
    feed.entry(post) do |entry|
      entry.url post_url(post)
      entry.title post.title
      entry.content post.body, type: "html"
      entry.updated post.created_at.strftime("%Y-%m-%dT%H:%M:%SZ")
    end
  end
end
