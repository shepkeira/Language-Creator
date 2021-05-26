class CreateLanguages < ActiveRecord::Migration[6.1]
  def change
    create_table :languages do |t|
      t.string :language_name
      t.decimal :homophone_percent

      t.timestamps
    end
  end
end
