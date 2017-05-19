class Post < ApplicationRecord
  def self.search(term)
    term_sanitized = "%#{term}%"
    Post.where("lower(title) LIKE ?", term_sanitized.downcase)
  end
end
