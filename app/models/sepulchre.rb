class Sepulchre < ActiveRecord::Base
  include Tire::Model::Search
  include Tire::Model::Callbacks

  attr_accessible :name, :surname, :family_name, :birth_date, :birth_location, :burial_date, :complex, :gravestone, :description, :quarter_id, :number

  belongs_to :quarter, inverse_of: :sepulchres
  has_many :photos, inverse_of: :sepulchre, dependent: :destroy

  delegate :part, to: :quarter

  validates :name, :surname, :quarter, :number, presence: true

  paginates_per 15

  def self.search query
    tire.search load: true  do
      query { string query, default_operator: "AND" } if query.present?
    end
  end

  def decedent
    [name, surname].join(" ")
  end
end
