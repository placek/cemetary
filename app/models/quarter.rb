class Quarter < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  attr_accessible :name, :slug, :part_id

  has_many :sepulchres, inverse_of: :quarter, dependent: :destroy
  belongs_to :part, inverse_of: :quarters

  validates :slug, uniqueness: true
  validates :part, presence: true

  def map
    file = Rails.root.join("public").join("system").join("quarters").join(part.slug).join("#{name}.svg")
    file if File.exist?(file)
  end
end
