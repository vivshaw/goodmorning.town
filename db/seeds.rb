# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

if TWord.count == 0
  puts "Now seeding T words..."

  raw_words = File.read(Rails.root.join('lib', 'seeds', 't_words.csv'))
  csv_words = CSV.parse(raw_words, :headers => false, :encoding => 'ISO-8859-1')

  csv_words.each do |word|
    TWord.create(word: word[0])
  end

  puts "T words seeded!"
end