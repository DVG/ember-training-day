class Actor < ActiveRecord::Base
  has_many :appearances
  has_many :movies, through: :appearances
  has_many :characters, through: :appearances
end
