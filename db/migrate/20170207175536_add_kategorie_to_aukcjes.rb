class AddKategorieToAukcjes < ActiveRecord::Migration[5.0]
  def change
    add_reference :aukcjes, :kategorie, foreign_key: true
  end
end
