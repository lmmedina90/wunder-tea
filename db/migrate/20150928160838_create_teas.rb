class CreateTeas < ActiveRecord::Migration
  def change
    create_table :teas do |t|
      t.string :type
      t.integer :quantity
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
