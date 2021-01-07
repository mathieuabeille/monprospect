class Addregion < ActiveRecord::Migration[6.0]
  def change
    add_column :leads, :region, :string
  end
end
