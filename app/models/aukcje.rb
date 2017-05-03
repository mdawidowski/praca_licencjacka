require 'elasticsearch/model'

class Aukcje < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  has_attached_file :image,  :storage => :cloudinary, :path => ':id/:style/:filename', :crop => :fill, :styles => { :medium => "300x250!", :thumb => "100x100!"}
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def self.search(query)
  __elasticsearch__.search(
    {
      query: {
        multi_match: {
          query: query,
          fields: ['title^10', 'text']
        }
      }
    }
  )
end

settings index: { number_of_shards: 1 } do
 mappings dynamic: 'false' do
   indexes :title, analyzer: 'english'
   indexes :text, analyzer: 'english'
 end
end

settings index: { number_of_shards: 1 } do
  mappings dynamic: 'false' do
    indexes :title, analyzer: 'english'
    indexes :text, analyzer: 'english'
  end
end

# Delete the previous articles index in Elasticsearch
Aukcje.__elasticsearch__.client.indices.delete index: Aukcje.index_name rescue nil

# Create the new index with the new mapping
Aukcje.__elasticsearch__.client.indices.create \
index: Aukcje.index_name,
body: { settings: Aukcje.settings.to_hash, mappings: Aukcje.mappings.to_hash }

# Index all article records from the DB to Elasticsearch
Aukcje.import
end
