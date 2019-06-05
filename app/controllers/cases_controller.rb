class CasesController < ApplicationController
  before_action :set_case, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @cases = policy_scope(Case).order(created_at: :desc)
    # raise
  end

  def show
    @case_actions = CaseAction.where(case: @case)
    authorize @case
  end

  def new
    @case = Case.new
    authorize @case
  end

  def create
    @case = Case.new(case_params)
    authorize @case
    @case.user = current_user
    if @case.save!
      redirect_to case_path(@case)
    else
      render :new
    end
  end

  def edit
    authorize @case
  end

  def update
    authorize @case
    if @case.update(case_params)
      redirect_to case_path(@case)
    else
      render :edit
    end
  end

  def destroy
    authorize @case
    @case.destroy
    redirect_to cases_path
  end

  private

  def set_case
    @case = Case.find(params[:id])
  end

  def case_params
    params.require(:case).permit(:start_date, :end_date, :child_name, :family_name, :address, :state, :phone_number, :summary, :case_number)
  end
end
