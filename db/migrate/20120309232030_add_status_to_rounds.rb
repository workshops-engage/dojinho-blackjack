class AddStatusToRounds < ActiveRecord::Migration
  def change
    add_column :rounds, :status, :string

  end
end
