class DepartmentsController < ApplicationController
  # Add authentication for admin only for create, update and delete

  def index
    @departments = Department.all
    render :index
  end

  def show
    @department = Department.find_by(id: params[:id])
    render :show
  end

  def create
    # create happy sad path later
    @department = Department.new(
      department_name: params[:department_name],
      department_manager: params[:department_manager],
    )
    @department.save
    render :show
  end

  def update
    # create happy sad path later
    @department = Department.find_by(id: params[:id])
    @department.update(
      department_name: params[:department_name] || @department.department_name,
      department_manager: params[:department_manager] || @department.department_manager,
    )
    render :show
  end

  def destroy
    @department = Department.find_by(id: params[:id])
    @department.destroy
    render json: { message: "department removed from list" }
  end
end
