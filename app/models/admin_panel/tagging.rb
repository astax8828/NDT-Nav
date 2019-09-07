class AdminPanel::Tagging < ApplicationRecord
  self.table_name = 'taggings'
  # Associations for tags.
  belongs_to :article
  belongs_to :tag
end
