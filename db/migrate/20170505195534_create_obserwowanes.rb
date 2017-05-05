class CreateObserwowanes < ActiveRecord::Migration[5.0]
  def change
    create_table :obserwowanes do |t|
      t.references :aukcje, foreign_key: true

      t.timestamps
    end
  end
end
