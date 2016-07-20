class Collection < ActiveRecord::Base
  has_many :items, class_name: 'CollectionItem'
  has_many :entities, through: :items
end
