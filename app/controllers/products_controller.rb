class ProductsController < ApplicationController
  def index
    @all = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end
end
