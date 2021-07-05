class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :line_1
      t.string :line_2
      t.string :city
      t.integer :zip
      t.string :state

      t.references :addressable, polymorphic: true
      t.timestamps
    end
  end
end
