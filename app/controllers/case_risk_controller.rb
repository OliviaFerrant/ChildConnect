class CaseRiskController < ApplicationController
    before_action :set_case, only: [:new, :create, :edit, :update]

    def index
    end

    def new
			@caserisk = Caserisk.new
    end

    def create
			@caserisk = Caserisk.new
			@caserisk.risk = @risk
    end

		def edit
			
    end

    def update
    end

    def destroy
    end

    private

    def set_case
			@case = case.find(params[:case_id])
    end

    def caserisk_params
			params.require(:caserisk).permit(:risk_id)
end
