class CreateLanguageSounds < ActiveRecord::Migration[6.1]
  def change
    create_table :language_sounds do |t|
      t.references :language, index: true, foreign_key: true
      t.references :sound, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
