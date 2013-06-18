class Post < ActiveRecord::Base
  extend FriendlyId
  default_scope order("created_at DESC")
  friendly_id :title, use: :slugged
  attr_accessible :body, :slug, :title
  paginates_per 5
end
