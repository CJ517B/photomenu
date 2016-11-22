class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :menu_listings,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :name, :uniqueness => { :scope => [:street] }

  validates :name, :presence => true

end
