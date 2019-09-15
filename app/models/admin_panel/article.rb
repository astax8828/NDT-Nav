class AdminPanel::Article < ApplicationRecord
  # Name table.
  self.table_name = 'articles'

  # Validations.

  validates :title, :content, :description, :type_article, :status_article,
            :category_id, :all_tags, presence: true
  validates :title, length: { maximum: 255 }


  # Associations for categories.
  belongs_to :category

  # Associations for accounts.
  belongs_to :admin_account

  # Associations for tags.
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings

  def all_tags
    self.tags.map(&:name).join(', ')
  end

  def all_tags=(names)
    self.tags = names.split(',').map do |name|
      AdminPanel::Tag.where(name: name.strip).first_or_create!
    end
  end
end
