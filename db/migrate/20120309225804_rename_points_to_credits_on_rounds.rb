class RenamePointsToCreditsOnRounds < ActiveRecord::Migration
  def up
  	rename_column :rounds, :points, :credits
  end

  def down
  	rename_column :rounds, :credits, :points
  end
end
