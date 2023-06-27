class RootcausesController < ApplicationController
  def index
    @rootcauses = Rootcause.all
    render :index
  end

  def show
    @rootcause = Rootcause.find_by(id: params[:id])
    render :show
  end

  def create
    @rootcause = Rootcause.new(
      product_id: params[:product_id],
      issue_description: params[:issue_description],
      severity: params[:severity],
      department_id: params[:department_id],
      root_cause_analysis: params[:root_cause_analysis],
    )
    @rootcause.save
    render :show
  end

  def update
    @rootcause = Rootcause.find_by(id: params[:id])
    @rootcause.update(
      product_id: params[:product_id] || @rootcause.product_id,
      issue_description: params[:issue_description] || @rootcause.issue_description,
      severity: params[:severity] || @rootcause.severity,
      department_id: params[:department_id] || @rootcause.department_id,
      root_cause_analysis: params[:root_cause_analysis] || @rootcause.root_cause_analysis,
    )
    render :show
  end

  def destroy
    @rootcause = Rootcause.find_by(id: params[:id])
    @rootcause.destroy
    render json: { message: "root cause removed from list" }
  end
end
