class CreateJoinTalbeSoundLanguage < ActiveRecord::Migration[6.1]
  def change
    create_table :join_talbe_sound_languages do |t|
      t.string :sound
      t.string :language

      t.timestamps
    end
  end
end
