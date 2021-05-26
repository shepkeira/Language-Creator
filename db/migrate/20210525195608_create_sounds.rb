class CreateSounds < ActiveRecord::Migration[6.1]
  def change
    create_table :sounds do |t|
      t.string :sound
      t.string :type

      t.timestamps
    end
  end
end
