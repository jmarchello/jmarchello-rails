class Post < ApplicationRecord
  has_rich_text :content

  scope :draft, -> { where(published_at: nil) }
  scope :published, -> { !draft }

  def published?
    published_at.present?
  end

  def permalink_path
    "/#{permalink}"
  end
end
