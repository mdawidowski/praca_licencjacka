class AddWinnerIdToAukcjes < ActiveRecord::Migration[5.0]
  def change
    add_column :aukcjes, :winner_id, :integer
  end
end
