class CreateTeas < ActiveRecord::Migration
  def change
    create_table :teas do |t|
      t.string :kind
      t.integer :quantity
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
