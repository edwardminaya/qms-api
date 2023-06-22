class ProductsController < ApplicationController
  # Only admin can create products
  def index
    @products = Product.all
    render :index
  end

  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end

  def create
    @product = Product.new(
      product_name: params[:product_name],
      product_code: params[:product_code],
      product_description: params[:product_description],
      productclass_id: params[:productclass_id],
    )
    @product.save
    render :show
  end
end
