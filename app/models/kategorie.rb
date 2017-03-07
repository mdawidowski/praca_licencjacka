class Kategorie < ApplicationRecord
  has_many :children, class_name: "Kategorie", foreign_key: "parent_id"

end
