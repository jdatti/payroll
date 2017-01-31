class AddEmployeeidToPayslip < ActiveRecord::Migration[5.0]
  def change
  	add_column :payslips, :employee_id, :integer
  end
end
