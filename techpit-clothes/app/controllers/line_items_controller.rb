# frozen_string_literal: true

class LineItemsController < ApplicationController
  before_action :set_cart, only: %i[create]

  def create
    product = Product.find(params[:product_id])

    if @cart.products.include?(product)
      line_item = @cart.line_items.find_by(product_id: product)
      line_item.quantity += 1
    else
      line_item = LineItem.new
      line_item.cart = @cart
      line_item.product = product
      line_item.quantity = params[:quantity]
    end

    line_item.save
    redirect_to carts_path(@cart)
  end

  def destroy
    line_item = LineItem.find(params[:id])
    line_item.destroy
    redirect_to carts_path(@cart)
  end
end
