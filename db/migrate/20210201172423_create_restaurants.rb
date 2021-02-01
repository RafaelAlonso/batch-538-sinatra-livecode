class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :category
      t.integer :votes, default: 0, null: false
      t.timestamps
    end
  end
end
