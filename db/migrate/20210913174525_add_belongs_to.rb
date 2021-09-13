class AddBelongsTo < ActiveRecord::Migration[6.1]
  def change
    add_belongs_to(:phonemes, :language, null: false)
  end
end
