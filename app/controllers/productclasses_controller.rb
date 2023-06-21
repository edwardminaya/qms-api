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
    @productclass = Productclass.new(
      product_class_name: params[:product_class_name] || productclass.product_class_name,
      product_class_code: params[:product_class_code] || productclass.product_class_code,
    )
    @productclass.save
    render :show
  end
end
