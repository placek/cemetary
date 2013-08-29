class Sepulchre < ActiveRecord::Base
  attr_accessible :name, :surname, :family_name, :birth_date, :birth_location, :burial_date, :complex, :gravestone, :profession, :description, :quarter_id, :number
  belongs_to :quarter, inverse_of: :sepulchres
  has_many :photos, inverse_of: :sepulchre, dependent: :destroy
  delegate :part, to: :quarter
  validates :name, :surname, :quarter, :number, presence: true
  paginates_per 7
  default_scope { alphabethic }
  QUERY_STRING = "(lower(sepulchres.name) LIKE ? OR lower(sepulchres.surname) LIKE ? OR lower(sepulchres.family_name) LIKE ? OR lower(sepulchres.birth_date) LIKE ? OR lower(sepulchres.burial_date) LIKE ? OR lower(sepulchres.complex) LIKE ? OR lower(sepulchres.profession) LIKE ?)"

  scope :alphabethic, order("surname, name, burial_date")
  scope :search, ->(value) do
    if value.present?
      keywords = get_keywords(value)
      query = ([QUERY_STRING] * keywords.count).join(" AND ")
      where(query, *(keywords.map { |keyword| [keyword] * 7 }.flatten))
    end
  end

  def decedent
    [name, surname].join(" ")
  end

  protected

  def self.get_keywords value
    value.split(/\s+/).map { |keyword| "%#{keyword.gsub("*", "%").downcase}%" }
  end
end
