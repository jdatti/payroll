class AddAdminFieldsToEmployee < ActiveRecord::Migration[5.0]
  def change
  	Employee.create(:emp_id =>'1',:employee_name => 'ADMIN',:designation => 'admin',:cell_no =>'8712888651',:pan_no => 'AFS5247890', :UAN_no => '123456789123',:PF_Acc_no => 'GRVSP0086252000/0000001',:is_admin => true,:email => 'admin@1.com',:password => '123456')
  end
end
