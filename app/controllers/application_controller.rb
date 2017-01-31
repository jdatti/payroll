class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_employee!
  include FullHelper

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
    def configure_permitted_parameters 
      devise_parameter_sanitizer.permit(:sign_up){|u|u.permit(:emp_id, :employee_name, :email, :password, :cell_no, :pan_no, :designation, :UAN_no, :Bank_Name, :Bank_account, :PF_Acc_no, :Gross_CTC, :Dateofjoining)}  
    end 
    
    def after_sign_in_path_for(resource)
      if resource.is_admin?
        employees_path
      else
        error_show_employees_path 
      end
    end 

  def after_sign_out_path_for(resource_or_scope)
    new_employee_session_path
  end
end
