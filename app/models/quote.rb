class Quote < ApplicationRecord
  validates :content, presence: true
  validates :user_id, presence: true
  belongs_to :user
  has_many :upvotes

  scope :search, ->(keyword){ where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present? }

  before_save :set_keywords

  protected

  def set_keywords
    self.keywords = [content].join(' ').downcase
    
  end
end
