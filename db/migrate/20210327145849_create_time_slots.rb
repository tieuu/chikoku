class CreateTimeSlots < ActiveRecord::Migration[6.0]
  def change
    create_table :time_slots do |t|
      t.references :calendar, null: false, foreign_key: true
      t.datetime :start
      t.time :duration

      t.timestamps
    end
  end
end
