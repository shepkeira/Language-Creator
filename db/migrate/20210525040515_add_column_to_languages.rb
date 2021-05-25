class AddColumnToLanguages < ActiveRecord::Migration[6.1]
  def change
    add_column :languages, :vowel_sounds, :string
  end
end
