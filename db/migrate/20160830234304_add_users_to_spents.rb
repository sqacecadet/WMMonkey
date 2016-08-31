class AddUsersToSpents < ActiveRecord::Migration[5.0]
  def change
    add_reference :spents, :user, foreign_key: true
  end
end
