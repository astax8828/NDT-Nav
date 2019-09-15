class AdminPanel::Tag < ApplicationRecord
  # Name table.
  self.table_name = 'tags'

  # Validations.
  validates :name, presence: true
  validates :name, length: { maximum: 255 }

  # Associations for tags.
  has_many :taggings, dependent: :destroy
  has_many :articles, through: :taggings
end
