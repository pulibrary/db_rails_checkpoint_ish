# frozen_string_literal: true

class AddIndexToFruitName < ActiveRecord::Migration[6.1]
  def change
    add_index :fruits, :name, unique: true
  end
end
