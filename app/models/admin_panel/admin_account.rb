class AdminPanel::AdminAccount < ApplicationRecord
  #The Name of table in a databbase
  self.table_name = 'admin_accounts'
  belongs_to :admin_panel_admin, :class_name => 'AdminPanel::Admin'
  has_many :articles
end
