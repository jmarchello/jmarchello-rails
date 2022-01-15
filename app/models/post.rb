class Post < ApplicationRecord
  has_rich_text :content

  scope :draft, -> { where(published_at: nil) }
  scope :published, -> { !draft }
end
