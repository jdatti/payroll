class AddColumnsToEmployee < ActiveRecord::Migration[5.0]
  def change
    rename_column :employees, :employee_name, :first_name
    add_column :employees, :last_name, :string, :after => :first_name
    add_column :employees, :salutation, :string
  end
end
