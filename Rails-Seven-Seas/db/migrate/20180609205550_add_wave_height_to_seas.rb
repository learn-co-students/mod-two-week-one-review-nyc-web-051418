class AddWaveHeightToSeas < ActiveRecord::Migration[5.1]
  def change
    add_column :seas, :wave_height, :integer
  end
end
