class Bike < ActiveRecord::Base
  has_many :comments
  has_many :photos
end
