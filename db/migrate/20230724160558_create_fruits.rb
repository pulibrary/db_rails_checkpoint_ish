# frozen_string_literal: true

class CreateFruits < ActiveRecord::Migration[6.1]
  def change
    create_table :fruits do |t|
      t.string :name
      t.integer :calories
      t.text :about

      t.timestamps
    end
  end
end
