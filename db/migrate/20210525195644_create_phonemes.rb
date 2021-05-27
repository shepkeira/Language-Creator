class CreatePhonemes < ActiveRecord::Migration[6.1]
  def change
    create_table :phonemes do |t|
      t.string :english_word
      t.string :language_word
      t.reference :language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
