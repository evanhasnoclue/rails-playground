class CreateBookingSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_slots do |t|
      t.string :date
      t.string :start_time
      t.string :end_time
      t.string :status
      t.references :field, foreign_key: true
      t.references :booking, foreign_key: true

      t.timestamps
    end
  end
end
