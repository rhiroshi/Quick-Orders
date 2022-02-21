class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # before_action :verify_authentication, except: []
  
  rescue_from CanCan::AccessDenied do |exception|
      respond_to do |format|
          format.json { head :forbidden }
          format.html { redirect_to root_path, alert: "Você não tem autorização para realizar a ação" }
      end
  end

  # def verify_authentication
  #    return if user_signed_in?
  #    redirect_to new_user_session_path
  # end

end
