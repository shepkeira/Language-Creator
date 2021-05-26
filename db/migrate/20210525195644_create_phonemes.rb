class CreatePhonemes < ActiveRecord::Migration[6.1]
  def change
    create_table :phonemes do |t|
      t.string :english_word
      t.string :language_word
      t.integer :language_id

      t.timestamps
    end
  end
end
