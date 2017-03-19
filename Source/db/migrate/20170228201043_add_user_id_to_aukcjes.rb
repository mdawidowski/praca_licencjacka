class AddUserIdToAukcjes < ActiveRecord::Migration[5.0]
  def change
    add_reference :aukcjes, :user, foreign_key: true
  end
end
