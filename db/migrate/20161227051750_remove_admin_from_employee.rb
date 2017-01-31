class RemoveAdminFromEmployee < ActiveRecord::Migration[5.0]
  def change
  remove_column :employees, :is_admin, :boolean

  end
end
