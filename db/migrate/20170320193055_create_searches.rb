class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :klucz
      t.string :kategoria
      t.decimal :min_cena
      t.decimal :max_cena

      t.timestamps
    end
  end
end
