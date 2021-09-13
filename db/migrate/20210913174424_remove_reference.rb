class RemoveReference < ActiveRecord::Migration[6.1]
  def change
    remove_refernce(:phonemes, :language, foreign_key: true)
    remove_foreign_key :phonemes, :languages
  end
end
