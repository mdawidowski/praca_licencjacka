class AddIsogloszenieToAukcjes < ActiveRecord::Migration[5.0]
  def change
    add_column :aukcjes, :isogloszenie, :boolean
  end
end
