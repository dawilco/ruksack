class CreateCampsites < ActiveRecord::Migration[6.1]
  def change
    create_table :campsites do |t|
      t.string :name
      t.integer :capacity

      t.belongs_to :facility, index: true, foreign_key: true
      t.timestamps
    end
  end
end
