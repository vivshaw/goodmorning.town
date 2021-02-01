class TWord < ApplicationRecord
  validates :word, presence: true
  validate :word_starts_with_t

  def word_starts_with_t
    errors.add(:word, "That word doesn't start with T!") unless word.start_with?("T", "t")
  end
end
