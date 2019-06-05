class SafetyFactorsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @safety_factor = Safety_factor.new
  end

  def create
    @Safety_factor = Safety_factor.new(Safety_factor_params)
    @Safety_factor.case_Safety_factor = @case_Safety_factor
    if @Safety_factor.save
      redirect_to action_path(@case)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @Safety_factor.update(Safety_factor_params)
      redirect_to Safety_factor_path(@Safety_factor)
    else
      render :edit
    end
  end

  def destroy
    @Safety_factor.destroy
    redirect_to action_path
  end

  private

  def set_Safety_factor
    @Safety_factor = Safety_factor.find(params[:id])
  end

  def set_case
    @case = Case.find(params[:case_id])
  end

  def Safety_factor_params
    params.require(:Safety_factor).permit(:fact)
  end
end




