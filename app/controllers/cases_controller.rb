class CasesController < ApplicationController
  before_action :set_case, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @case = Case.new
  end

  def create
    @case = Case.new(case_params)
  end

  def edit
  end

  def update
  end

  def destroy
    @case.destroy
    redirect_to cases_path
  end

  private

  def set_case
    @case = Case.find(params[:id])
  end

  def case_params
    params.require(:case).permit(:start_date, :end_date, :child_name, :family_name, :address, :state)
  end
end
