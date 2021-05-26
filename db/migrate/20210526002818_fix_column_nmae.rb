class FixColumnNmae < ActiveRecord::Migration[6.1]
  def change
    rename_column :sounds, :type, :sound_type
  end
end
