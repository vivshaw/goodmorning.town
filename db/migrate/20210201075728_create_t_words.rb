class CreateTWords < ActiveRecord::Migration[6.0]
  def change
    create_table :t_words do |t|
      t.string :word

      t.timestamps
    end
  end
end
