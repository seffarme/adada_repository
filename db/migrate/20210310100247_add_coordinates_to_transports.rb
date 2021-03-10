class AddCoordinatesToTransports < ActiveRecord::Migration[6.0]
  def change
    add_column :transports, :latitude, :float
    add_column :transports, :longitude, :float
  end
end
