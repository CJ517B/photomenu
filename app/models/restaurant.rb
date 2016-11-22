class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :menu_listings,
             :dependent => :destroy

  # Indirect associations

  has_many   :menus,
             :through => :menu_listings,
             :source => :menu

  # Validations

  validates :name, :uniqueness => { :scope => [:street] }

  validates :name, :presence => true

end
