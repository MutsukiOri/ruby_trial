# frozen_string_literal: true

# Migration to create line_items table
class CreateLineItems < ActiveRecord::Migration[7.0]
  def change
    create_table :line_items do |t|
      t.references :product, null: false, foreign_key: true
      t.references :cart, null: false, foreign_key: true
      t.integer :quantity, null: false

      t.timestamps
    end
  end
end
