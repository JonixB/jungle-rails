class ProductsController < ApplicationController
  http_basic_authenticate_with name: ENV["HTTP_BASIC_AUTH_USERNAME"], password: ENV["HTTP_BASIC_AUTH_PASSWORD"]
  
  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
  end

end
