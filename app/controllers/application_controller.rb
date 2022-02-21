class ApplicationController < ActionController::Base
  
  before_action :authenticate_user!
  
  rescue_from CanCan::AccessDenied do |exception|
      respond_to do |format|
          format.json { head :forbidden }
          format.html { redirect_to root_path, alert: "Você não tem autorização para realizar a ação" }
      end
  end

end
