class AdminPanel::Category < ApplicationRecord
  # Name table.
  self.table_name = "categories"

  # Validations.
  validates :name, :description, presence: true
  validates :name, length: { maximum: 255 }

  # Associations for categories.
  has_many :articles, dependent: :nullify
end