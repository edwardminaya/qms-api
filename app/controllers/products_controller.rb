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
    # Add happy sad path
    @product = Product.new(
      product_name: params[:product_name],
      product_code: params[:product_code],
      product_description: params[:product_description],
      productclass_id: params[:productclass_id],
    )
    @product.save
    render :show
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      product_name: params[:product_name] || @product.product_name,
      product_code: params[:product_code] || @product.product_code,
      product_description: params[:product_description] || @product.product_description,
      productclass_id: params[:productclass_id] || @product.productclass_id,
    )
    render :show
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: { message: "product removed from list" }
  end
end
