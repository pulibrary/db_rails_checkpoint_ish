class Fruit < ApplicationRecord
    validates :name, presence: true
    validates :calories, presence: true
    validates :about, presence: true
end