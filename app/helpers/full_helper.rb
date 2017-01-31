module FullHelper
  
  def is_admin? 
    current_employee && current_employee.is_admin == true
  end

end