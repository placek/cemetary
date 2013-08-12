class Sepulchre < ActiveRecord::Base
  attr_accessible :name, :surname, :family_name, :birth_date, :birth_location, :burial_date, :complex, :gravestone, :description, :quarter_id, :number

  belongs_to :quarter, inverse_of: :sepulchres
  has_many :photos, inverse_of: :sepulchre, dependent: :destroy

  delegate :part, to: :quarter

  validates :name, :surname, :quarter, :number, presence: true

  paginates_per 5

  scope :search, ->(value) do
    if value.present?
      where(
        "sepulchres.name LIKE ? OR sepulchres.surname LIKE ? OR sepulchres.family_name LIKE ? OR sepulchres.birth_date LIKE ? OR sepulchres.burial_date LIKE ? OR sepulchres.complex LIKE ?",
        querify(value),
        querify(value),
        querify(value),
        querify(value),
        querify(value),
        querify(value)
      )
    end
  end

  def decedent
    [name, surname].join(" ")
  end

  private

  def self.querify value
    "%#{value.split("").join("%")}%"
  end
end
