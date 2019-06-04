class CaseRiskController < ApplicationController
    before_action :set_case, only: [:show, :new, :create, :edit, :update]

    def index
    end

    def show
    end

    def new
    end

    def create
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

end
