class ProductsController < ApplicationController
  def index
    @all = Product.all.page params[:page]
  end

  def show
    @product = Product.find(params[:id])
  end
end
