class Sepulchre < ActiveRecord::Base
  attr_accessible :birth, :burial, :decedent, :history
  validates_presence_of :decedent, :burial
end
