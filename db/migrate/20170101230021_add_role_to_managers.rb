class AddRoleToManagers < ActiveRecord::Migration[5.0]
  def change
    add_column :managers, :role, :string, default: "assistant"
  end
end
