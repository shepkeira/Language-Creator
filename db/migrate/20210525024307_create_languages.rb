class CreateLanguages < ActiveRecord::Migration[6.1]
  def change
    create_table :languages do |t|
      t.string :language_name
      t.decimal :homonyme_percent
      t.string :vowel_sounds

      t.timestamps
    end
  end
end
