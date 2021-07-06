class CreateRegistrations < ActiveRecord::Migration[6.1]
  def change
    create_table :registrations do |t|
      t.decimal :amount_paid,  precision: 8, scale: 2
      
      t.belongs_to :session
      t.belongs_to :participant
      t.timestamps
    end
  end
end
