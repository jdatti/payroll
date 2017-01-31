class CreatePayslips < ActiveRecord::Migration[5.0]
  def change
    create_table :payslips do |t|
      t.string :employee_emp_id  
      t.string :gross_CTC
      t.string :basic
      t.string :HRA
      t.string :medical
      t.string :conveyance
      t.string :PF
      t.string :special_allowance 
      t.string :arrears
      t.string :Prof_Tax
      t.string :Total_PF_deductions
      t.string :Income_Tax
      t.string :vac_sick_overdue
      t.string :total_earnings
      t.string :total_deductions 
      t.string :net_pay
      t.string :vacation
      t.string :sick

      t.timestamps
    end
  end
end
