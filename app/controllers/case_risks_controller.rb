class CaseRisksController < ApplicationController
	before_action :set_case, only: [:new, :create, :edit, :update]

	def index
		@case_risks = policy_scope(CaseRisk).order(created_at: :desc)
	end

	def new
		@case_risk = CaseRisk.new
		authorize @case_risk
	end

	def create
		@case_risk = CaseRisk.new(case_risk_params)
		@case_risk.case = @case
		authorize @case_risk
		if @case_risk.save
			redirect_to case_path(@case)
		else
			render :new
		end
	end

	def edit
		authorize @case_risk
	end

	def update
		authorize @case_risk
		if @case_risk.update(case_risk_params)
			redirect_to case_path(@case)
		else
			render :edit
		end
	end

	def destroy
		authorize @case_risk
		@case_risk.destroy
		redirect_to case_path(@case)
	end

	private

	def set_case
		@case = Case.find(params[:case_id])
	end

	def case_risk_params
		params.require(:case_risk).permit(:risk_id)
	end
end
