# frozen_string_literal: true

# Migration to create carts table
class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts, &:timestamps
  end
end
