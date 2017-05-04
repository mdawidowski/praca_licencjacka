class CreateMojeaukcjes < ActiveRecord::Migration[5.0]
  def change
    create_table :mojeaukcjes do |t|
      t.references :aukcje, foreign_key: true

      t.timestamps
    end
  end
end
