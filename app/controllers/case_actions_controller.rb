class CaseActionsController < ApplicationController
  before_action :set_action, only: [:index, :edit, :update]
  before_action :set_case, only: [:index, :new, :create]

  def index
    @case_actions = policy_scope(CaseAction)
  end

  def show
    authorize @case_action
  end

  def new
    @case_action = CaseAction.new
    authorize @case_action
  end

  def create
    @case_action = CaseAction.new(case_action_params)
    authorize @case_action
    @case_action.case = @case
    if @case_action.save
      redirect_to case_path(@case)
    else
      render :new
    end
  end

  def edit
    @case_action = CaseAction.find(params[:id])
    authorize @case_action
  end

  def update
    authorize @case_action
    if @case_action.update(case_action_params)
      # raise
      case @case_action.status
      when 'Court'
        @case_action.case.update(state: 'Court')
      when 'Close Case'
        @case_action.case.update(state: 'Close Case')
      when 'Unchanged'
        @case_action.case.update(state: 'Unchanged')
      end
      redirect_to case_path(id: @case_action.case_id)
    else
      render :edit
    end
  end

  def destroy
    authorize @case_action
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
    params.require(:case_action).permit(:due_date, :status, :title, :description, :report, :photo)
  end
end
