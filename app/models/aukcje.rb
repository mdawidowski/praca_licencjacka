class Aukcje < ApplicationRecord
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>"}
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def self.search(search)
    if search
      where(["nazwa LIKE ?", "%#{search}%"])
    else
      all
    end
  end
end
