class AdminPanel::Tag < ApplicationRecord
  self.table_name = 'tags'
  # Associations for tags.
  has_many :taggings, dependent: :destroy
  has_many :articles, through: :taggings, dependent: :destroy
end
