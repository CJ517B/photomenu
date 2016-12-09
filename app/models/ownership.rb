class Ownership < ApplicationRecord

  validates :user_id, :presence => true
  validates :restaurant_id, :presence => true
  validates :restaurant_id, :uniqueness => { :scope => [:user_id] }
  
end
