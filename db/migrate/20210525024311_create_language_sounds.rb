class CreateLanguageSounds < ActiveRecord::Migration[6.1]
  def change
    create_table :language_sounds do |t|
      t.integer :language_id
      t.string :vowel_sounds
      t.string :consonant_sounds

      t.timestamps
    end
  end
end
