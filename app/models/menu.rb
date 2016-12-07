class Menu < ApplicationRecord
  # Direct associations

  has_many   :menu_items,
             :dependent => :destroy

  belongs_to :restaurant

  # Indirect associations

  # Validations

  validates :menu_name, :presence => true, :uniqueness => { :scope => [:restaurant_id] }

  validates :restaurant_id, :presence => true

end
