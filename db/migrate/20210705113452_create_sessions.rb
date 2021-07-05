class CreateSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.string :name
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.datetime :registration_open_datetime
      t.datetime :registration_close_datetime

      t.belongs_to :event, index: true, foreign_key: true
      t.timestamps
    end
  end
end
