class Sepulchre < ActiveRecord::Base
  include Tire::Model::Search
  include Tire::Model::Callbacks

  attr_accessible :name, :surname, :family_name, :birth_date, :birth_location, :burial_date, :complex, :gravestone, :description, :quarter_id, :number

  belongs_to :quarter, inverse_of: :sepulchres
  has_many :photos, inverse_of: :sepulchre, dependent: :destroy

  delegate :part, to: :quarter

  validates :name, :surname, :quarter, :number, presence: true

  paginates_per 15

  mapping do
    indexes :_id, index: :not_analyzed
    indexes :name, analyzer: "snowball", boost: 100
    indexes :surname, analyzer: "snowball", boost: 100
    indexes :family_name, analyzer: "snowball", boost: 50
    indexes :description, analyzer: "snowball"
    indexes :birth_date, analyzer: "snowball"
    indexes :burial_date, analyzer: "snowball"
    indexes :birth_location, analyzer: "snowball"
    indexes :gravestone, analyzer: "snowball"
    indexes :complex, analyzer: "snowball"
  end

  def self.search query
    tire.search load: true  do
      query { string query, default_operator: "AND" } if query.present?
    end
  end

  def decedent
    [name, surname].join(" ")
  end
end
