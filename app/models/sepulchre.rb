class Sepulchre < ActiveRecord::Base
  attr_accessible :birth, :burial, :decedent, :history, :part_id, :lat, :lng
  validates_presence_of :part
  belongs_to :part, inverse_of: :sepulchres

  scope :search, ->(query) { where("decedent LIKE ?", querify(query)) if query.present? }

  def to_json options = {}
    super(options.merge(only: [ :decedent, :lat, :lng ]))
  end

  private

  def self.querify query
    "%#{query.split("").join("%")}%"
  end
end
