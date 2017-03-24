class AddEndedToAukcjes < ActiveRecord::Migration[5.0]
  def change
    add_column :aukcjes, :ended, :boolean, :default => false
  end
end
