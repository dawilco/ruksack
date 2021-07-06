class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.boolean :published
      

      t.belongs_to :facility, index: true, foreign_key: true
      t.timestamps
    end
  end
end
