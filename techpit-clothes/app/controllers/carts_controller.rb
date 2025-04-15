# frozen_string_literal: true

class CartsController < ApplicationController
  before_action :set_cart, only: %i[index]

  def index; end
end
