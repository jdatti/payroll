class AddDaysToPayslips < ActiveRecord::Migration[5.0]
  def change
    add_column :payslips, :Days_Paid, :integer
  end
end
