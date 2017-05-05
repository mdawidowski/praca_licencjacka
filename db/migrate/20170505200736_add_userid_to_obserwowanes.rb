class AddUseridToObserwowanes < ActiveRecord::Migration[5.0]
  def change
    add_column :obserwowanes, :userid, :integer
  end
end
