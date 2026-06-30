class CompaniesController < ApplicationController
  skip_before_action :authenticate_manager!, only: [:index, :select]

  def index
    @companies = Company.all
    if params[:search].present?
      @companies = @companies.where("name LIKE ?", "%#{params[:search]}%")
    end
  end

  def select
    @company = Company.find(params[:id])
    session[:company_id] = @company.id
    redirect_to new_manager_session_path
  end
end