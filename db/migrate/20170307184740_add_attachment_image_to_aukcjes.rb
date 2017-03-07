class AddAttachmentImageToAukcjes < ActiveRecord::Migration
  def self.up
    change_table :aukcjes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :aukcjes, :image
  end
end
