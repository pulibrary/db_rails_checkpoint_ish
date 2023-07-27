# frozen_string_literal: true

class Fruit < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: {
    message: "This fruit already exists. Try again."
  }
  validates :calories, presence: true
  validates :about, presence: true
end
