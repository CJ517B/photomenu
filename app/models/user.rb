class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

 has_many :restaurants, through: :ownerships
 has_many :photos
 has_many :bookmarks
end
