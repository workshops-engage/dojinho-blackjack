class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name, null: false
      t.integer :credits, null: false, default: 1000
      t.integer :rounds, null: false, default: 1

      t.timestamps
    end
  end
end