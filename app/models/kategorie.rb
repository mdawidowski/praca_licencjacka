class Kategorie < ApplicationRecord
  acts_as_tree
  has_many :aukcje
end
