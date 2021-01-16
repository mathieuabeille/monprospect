class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :meeting
      t.string :phone
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :status
      t.string :region

      t.timestamps
    end
  end
end
