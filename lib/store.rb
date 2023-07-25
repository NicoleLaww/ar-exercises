class Store < ActiveRecord::Base
  has_many :employees 

  validates :name, presence: true, length: {minimum: 3}
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0}
  validate :must_have_apparel

  def must_have_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:base, "Store must carry at least one of men's or women's apparel")
    end
  end 
end

# # Add the following code _directly_ inside the Store model (class): `has_many :employees`
# class Store < ApplicationRecord 
#   has_many :employees 
# end 

# Validations
# class Store < ApplicationRecord
#   has_many :employees 

#   validates :name, presence: true, length: {minimum: 3}
#   validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0}
#   validate :must_have_apparel

#   def must_have_apparel
#     if !mens_apparel && !womens_apparel
#       errors.add(:base, "Store must carry at least one of men's or women's apparel")
#     end
#   end 
# end

