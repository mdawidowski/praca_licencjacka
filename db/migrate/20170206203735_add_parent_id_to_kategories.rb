class AddParentIdToKategories < ActiveRecord::Migration[5.0]
  def change
    add_column :kategories, :parent_id, :integer
  end
end
