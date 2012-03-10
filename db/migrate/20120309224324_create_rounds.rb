class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.text :deck
      t.text :dealer_cards
      t.text :player_cards
      t.references :game
      t.integer :points

      t.timestamps
    end
    add_index :rounds, :game_id
  end
end
