class CaseRiskController < ApplicationController
    before_action :set_case, only: [:new, :create, :edit, :update]

		def index
			@case_risks = policy_scope(Risk).order(created_at: :desc)
    end

    def new
			@case_risk = Risk.new
    end

    def create
			@case_risk = Risk.new
			@case_risk.risk = @risk
    end

		def edit
			
    end

		def update
			if @case_risk.update(case_risk_params)
				redirect_to case_path(@case)
			else
				render :edit
			end
    end

		def destroy
			@case_risk.destroy
			redirect_to case_path(@case)
    end

    private

    def set_case
			@case = case.find(params[:case_id])
    end

    def case_risk_params
			params.require(:risk).permit(:risk_id)
end
