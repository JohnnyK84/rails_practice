class Product < ApplicationRecord
    validates :title, presence: true, length: {minimum: 5}
    validates :subtitle, presence: true 
    validates :description, presence: true
end
