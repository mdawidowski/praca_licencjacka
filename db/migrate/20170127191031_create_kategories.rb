class CreateKategories < ActiveRecord::Migration[5.0]
  def change
    create_table :kategories do |t|
      t.string "nazwa_kategorii"
      t.integer "parent_id"
      t.timestamps
    end
  end
end
