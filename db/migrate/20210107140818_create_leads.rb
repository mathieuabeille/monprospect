class CreateLeads < ActiveRecord::Migration[6.0]
  def change
    create_table :leads do |t|
      t.string :email
      t.string :number
      t.string :leadtype
      t.integer :quantity

      t.timestamps
    end
  end
end
