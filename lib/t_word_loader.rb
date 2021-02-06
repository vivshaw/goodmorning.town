require 'csv'

class TWordLoader
  @@t_words = []

  def self.init_words
    if @@t_words.length == 0
      puts "Now loading T words..."

      raw_words = File.read(Rails.root.join('lib', 'seeds', 't_words.csv'))
      csv_words = CSV.parse(raw_words, :headers => false, :encoding => 'ISO-8859-1')

      csv_words.each do |word|
        @@t_words.append(word[0])
      end

      puts "T words loaded!"
    end
  end

  def self.random_word
    @@t_words.sample
  end

end