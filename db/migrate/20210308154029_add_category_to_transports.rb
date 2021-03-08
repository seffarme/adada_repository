class AddCategoryToTransports < ActiveRecord::Migration[6.0]
  def change
    add_column :transports, :category, :string
  end
end
