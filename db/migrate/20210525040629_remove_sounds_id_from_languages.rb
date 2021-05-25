class RemoveSoundsIdFromLanguages < ActiveRecord::Migration[6.1]
  def change
    remove_column :languages, :sounds_id, :integer
  end
end
