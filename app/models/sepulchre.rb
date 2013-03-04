class Sepulchre < ActiveRecord::Base
  attr_accessible :birth, :burial, :decedent, :history, :part_id
  validates_presence_of :part
  belongs_to :part, inverse_of: :sepulchres

  scope :search, ->(query) { where("decedent LIKE ?", querify(query)) if query.present? }

  private

  def self.querify query
    "%#{query.split("").join("%")}%"
  end
end
