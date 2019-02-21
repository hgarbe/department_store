class Comment < ApplicationRecord
  before_save :check_author
  belongs_to :shoe

  def check_author
    if self.author.blank?
      self.author = 'anon'
    end
  end
end