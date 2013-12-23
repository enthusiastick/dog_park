class Dog < ActiveRecord::Base
  validates_presence_of :name

  has_many :pairings
  has_many :owners, through: :pairings

end
