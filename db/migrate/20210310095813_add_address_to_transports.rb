class AddAddressToTransports < ActiveRecord::Migration[6.0]
  def change
    add_column :transports, :address, :string
  end
end
