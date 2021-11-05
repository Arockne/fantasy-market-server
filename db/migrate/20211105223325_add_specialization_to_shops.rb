class AddSpecializationToShops < ActiveRecord::Migration[6.1]
  def change
    add_column :shops, :specialization, :string
  end
end
