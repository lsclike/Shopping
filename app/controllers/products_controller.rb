class ProductsController < ApplicationController
  def index
    @all = Product.(params[:page]).per(1)
  end

  def show
    @product = Product.find(params[:id])
  end
end
