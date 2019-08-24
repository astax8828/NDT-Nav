class CreateAdminPanelAdminAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :admin_accounts do |t|
      t.belongs_to :admin_panel_admin, null: false, foreign_key: true
      t.string :name
    end

    add_index :admin_accounts, :name, unique: true
  end
end
