class Aukcje < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  validates :nazwa, uniqueness: true
  has_and_belongs_to_many :genres
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>"}
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
