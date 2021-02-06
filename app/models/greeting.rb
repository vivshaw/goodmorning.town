require './lib/t_word_loader.rb'

class Greeting < ApplicationRecord
  before_validation :assign_random_word
  validates :word, presence: true

  broadcasts_to -> (greeting) { "greetings" }, inserts_by: :prepend

  private

  def assign_random_word
    self.word = TWordLoader.random_word
  end
end
