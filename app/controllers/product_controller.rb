class ProductController < ApplicationController
  def index
    @all = Product.all
  end

  def show
    @product = Product.find_by(id: params[:id])
  end
end
