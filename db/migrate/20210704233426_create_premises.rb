class CreatePremises < ActiveRecord::Migration[6.1]
  def change
    create_table :premises do |t|
      t.string :name
      t.string :type
      
      t.belongs_to :facility, index: true, foreign_key: true
      t.timestamps
    end
  end
end
