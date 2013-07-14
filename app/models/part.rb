class Part < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  attr_accessible :name, :slug

  has_many :sepulchres, through: :quarters
  has_many :quarters, inverse_of: :part, dependent: :destroy

  validates :slug, uniqueness: true

  def map
    file = Rails.root.join("public").join("system").join("parts").join("#{slug}.svg")
    file if File.exist?(file)
  end
end
