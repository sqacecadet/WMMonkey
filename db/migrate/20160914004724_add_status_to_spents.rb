class AddStatusToSpents < ActiveRecord::Migration[5.0]
  def change
    add_column :spents, :status, :integer
  end
end
