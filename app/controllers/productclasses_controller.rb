class ProductclassesController < ApplicationController
  # Add authentication for admin only for create, update and delete
  def index
    @productclasses = Productclass.all
    render :index
  end

  def show
    @productclass = Productclass.find_by(id: params[:id])
    render :show
  end

  def create
    # create happy sad path later
    @productclass = Productclass.new(
      product_class_name: params[:product_class_name],
      product_class_code: params[:product_class_code],
    )
    @productclass.save
    render :show
  end

  def update
    # create happy sad path later
    @productclass = Productclass.find_by(id: params[:id])
    @productclass.update(
      product_class_name: params[:product_class_name] || @productclass.product_class_name,
      product_class_code: params[:product_class_code] || @productclass.product_class_code,
    )
    render :show
  end

  def destroy
    @productclass = Productclass.find_by(id: params[:id])
    @productclass.destroy
    render json: { message: "Product class removed from list" }
  end
end
