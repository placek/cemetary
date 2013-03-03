class Part < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  attr_accessible :name, :slug
  has_many :sepulchres, inverse_of: :part, dependent: :destroy
end
