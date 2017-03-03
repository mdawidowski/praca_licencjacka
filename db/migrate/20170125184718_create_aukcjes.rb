class CreateAukcjes < ActiveRecord::Migration[5.0]
  def change
    create_table :aukcjes do |t|
      t.string "nazwa"
      t.string "opis"
      t.float "cena_startowa"
      t.float "cena_minimalna"
      t.float "cena_aktualna"
      t.float "koszt_przesylki"
      t.datetime "data_zakonczenia"
      t.boolean "zakonczone", :default => false
      t.timestamps
    end
  end
end
