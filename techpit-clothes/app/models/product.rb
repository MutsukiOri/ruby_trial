# frozen_string_literal: true

class Product < ApplicationRecord
  has_many :line_items
  has_many :carts, through: :line_items
end
