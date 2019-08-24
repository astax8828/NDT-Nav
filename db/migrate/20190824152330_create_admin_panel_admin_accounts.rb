class CreateAdminPanelAdminAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :admin_panel_admin_accounts do |t|

      t.timestamps
    end
  end
end
