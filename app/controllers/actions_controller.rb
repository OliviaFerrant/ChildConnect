class ActionsController < ApplicationController
before_action :set_action, only: [:index, :edit, :update]
before_action :set_case, only: [:new, :create, :index, :edit, :update]

  def index
  end

  def show
  end

  def new
    @action = Action.new
    authorize @action
  end

  def create
    @action = Action.new(action_params)
    @action.case = @case
    if @action.save
      redirect_to action_path(@case)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @action.update(action_params)
      redirect_to action_path(@action)
    else
      render :edit
    end
  end

  def destroy
    @action.destroy
    redirect_to action_path
  end

  private

  def set_action
    @action = Action.find(params[:id])
  end

  def set_case
    @case = Case.find(params[:case_id])
  end

  def case_params
    params.require(:action).permit(:due_date, :status, :title, :description, :report)
  end
end
