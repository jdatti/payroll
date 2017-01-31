class AddColumnToEmployee < ActiveRecord::Migration[5.0]
  def change
  	add_column :employees, :is_admin, :boolean
  	add_column :employees, :Gross_CTC, :decimal
  	add_column :employees, :Dateofjoining, :date
  end
end
