class Post < ActiveRecord::Base
  extend FriendlyId
  default_scope order("created_at DESC")
  friendly_id :title, use: :slugged
  attr_accessible :body, :slug, :title
end
