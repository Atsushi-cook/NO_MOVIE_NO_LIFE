class Tweet < ApplicationRecord
  # validates:text, presence: true
  belongs_to :user
  has_many :comments
  is_impressionable

  def self.search(search)
    return Tweet.all unless search
    Tweet.where('text LIKE(?)', "%#{search}%")
  end
end
