class Owner < ActiveRecord::Base
  validates_presence_of :firstname
  validates_presence_of :lastname
  validates_presence_of :email
  validates_format_of :email, :with => /.+@.+/

  has_many :pairings
  has_many :dogs, through: :pairings

end
