class RenameColumnofPayslips < ActiveRecord::Migration[5.0]
  def change
    rename_column :payslips, :employee_emp_id, :emp_id
  end
end
