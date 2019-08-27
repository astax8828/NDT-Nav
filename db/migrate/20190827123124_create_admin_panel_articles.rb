class CreateAdminPanelArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.references :admin_account, null: false, foreign_key: true
      t.text :title
      t.text :content
      t.text :description
      t.references :category, null: false, foreign_key: true
      t.string :type_article
      t.boolean :allow_comments
      t.string :status_article

      t.timestamps
    end
  end
end