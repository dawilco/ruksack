class CreateParticipantPricingSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :participant_pricing_schedules do |t|
      t.string :title
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.decimal :price,  precision: 8, scale: 2

      t.belongs_to :participant_type, index: true, foreign_key: true
      t.timestamps
    end
  end
end
