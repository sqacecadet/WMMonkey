class CreateSpents < ActiveRecord::Migration[5.0]
  def change
    create_table :spents do |t|
      t.float :value
      t.date :date
      t.text :description
      t.string :type

      t.timestamps
    end
  end
end
