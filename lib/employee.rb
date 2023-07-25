class Employee < ActiveRecord::Base
  belongs_to :store
  
  validates :first_name, presence: true 
  validates :last_name, presence: true 
  validates :hourly_rate, numericality: { only_integer: true, greater_than: 40, less_than: 200} 
  validates :store, presence: true
end

# # Add the following code directly inside the Employee model (class): `belongs_to :store`
# class Employee < ApplicationRecord 
#   belongs_to :store
# end 

# Validations 
# class Employee < ApplicationRecord
#   belongs_to :store 

#   validates :first_name, presence: true 
#   validates :last_name, presence: true 
#   validates :hourly_rate, numericality: { only_integer: true, greater_than: 40, less_than: 200} 
#   validates :store, presence: true
# end