class AddEmployeeToPayslip < ActiveRecord::Migration[5.0]
  def change
  	add_reference :payslips, :employee, foreign_key: true
  end
end
