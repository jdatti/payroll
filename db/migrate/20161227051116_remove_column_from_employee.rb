class RemoveColumnFromEmployee < ActiveRecord::Migration[5.0]
  def change
  	remove_column :employees, :Gross_CTC, :string
  	remove_column :employees, :is_admin, :string
  	remove_column :employees, :Dateofjoining, :string
  end
end
