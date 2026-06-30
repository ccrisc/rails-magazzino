class Managers::SessionsController < Devise::SessionsController
  def create
    company = Company.find_by(id: session[:company_id])

    if company.nil?
      redirect_to companies_path, alert: 'Seleziona prima un\'azienda.'
      return
    end

    manager = company.managers.find_by(email: params[:manager][:email])

    if manager.nil?
      flash[:alert] = 'Email non trovata per questa azienda.'
      redirect_to new_manager_session_path
      return
    end

    super
  end
end