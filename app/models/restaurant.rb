class Restaurant < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :name, :uniqueness => { :scope => [:street] }

  validates :name, :presence => true

end
