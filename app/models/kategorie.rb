class Kategorie < ApplicationRecord
  belongs_to :parent, class_name: "Kategorie"
  has_many :children, class_name: "Kategorie", foreign_key: "parent_id"
end
