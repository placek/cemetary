class Sepulchre < ActiveRecord::Base
  attr_accessible :birth, :burial, :decedent, :history, :part_id
  validates_presence_of :part
  belongs_to :part, inverse_of: :sepulchres
end
