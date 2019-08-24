class AdminPanel::Admin < ApplicationRecord
  has_one :admin_account,
          :class_name => 'AdminPanel::AdminAccount',
          foreign_key: "admin_panel_admin_id"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
