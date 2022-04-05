class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.integer :id
      t.datetime :starts_at
      t.datetime :ends_at
      t.integer :patient_id
      t.integer :doctor_id

      t.timestamps
    end
  end
end
