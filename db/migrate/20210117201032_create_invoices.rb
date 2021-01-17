class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.string :region
      t.integer :quantity
      t.string :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
