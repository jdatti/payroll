class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :emp_id
      t.string :employee_name
      t.string :designation
      t.string :cell_no
      t.string :pan_no
      t.string :UAN_no
      t.string :PF_Acc_no
      t.string :Bank_Name
      t.string :Bank_account
      t.string :is_admin
      t.string :Gross_CTC
      t.string :Dateofjoining
      t.timestamps
    end
  end
end
