class AdminPanel::Article < ApplicationRecord
  self.table_name = 'articles'
  belongs_to :category
  belongs_to :admin_account
end
