class AdminPanel::Category < ApplicationRecord
  self.table_name = "categories"
  has_many :articles
end