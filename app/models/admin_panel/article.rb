class AdminPanel::Article < ApplicationRecord
  self.table_name = 'articles'
  belongs_to :category
end
