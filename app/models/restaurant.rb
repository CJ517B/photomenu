class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :menu_listings,
             :class_name => "Menu",
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :address, :presence => true

  validates :name, :uniqueness => { :scope => [:address] }

  validates :name, :presence => true

end
