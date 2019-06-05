class CaseActionsController < ApplicationController
  before_action :set_action, :set_case, only: [:index, :create, :edit, :update]

  def index
  end

  def show
  end

  def new
    @case_action = CaseAction.new
  end

  def create
    @case_action = CaseAction.new(case_action_params)
    @case_action.case = @case
    if @case_action.save
      redirect_to action_path(@case)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @case_action.update(action_params)
      redirect_to action_path(@case_action)
    else
      render :edit
    end
  end

  def destroy
    @case_action.destroy
    redirect_to action_path
  end

  private

  def set_action
    @case_action = CaseAction.find(params[:id])
  end

  def set_case
    @case = Case.find(params[:case_id])
  end

  def case_action_params
    params.require(:action).permit(:due_date, :status, :title, :description, :report)
  end
end
