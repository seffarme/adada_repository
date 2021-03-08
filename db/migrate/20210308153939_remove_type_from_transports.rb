class RemoveTypeFromTransports < ActiveRecord::Migration[6.0]
  def change
    remove_column :transports, :type, :string
  end
end
