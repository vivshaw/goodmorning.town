class CreateGreetings < ActiveRecord::Migration[6.0]
  def change
    create_table :greetings do |t|
      t.string :word

      t.timestamps
    end
  end
end
