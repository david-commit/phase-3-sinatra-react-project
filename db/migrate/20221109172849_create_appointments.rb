class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.integer :user_id
      t.string :user_name
      t.string :workout
      t.string :date
      t.string :duration
      t.integer :trainer_id
      t.timestamps
    end
  end
end
