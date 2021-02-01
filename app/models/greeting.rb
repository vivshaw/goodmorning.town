class Greeting < ApplicationRecord
  before_validation :assign_random_word

  validates :word, presence: true

  private

  def assign_random_word
    random_t_word = TWord.order(Arel.sql('RANDOM()')).first
    self.word = random_t_word.word
  end
end
