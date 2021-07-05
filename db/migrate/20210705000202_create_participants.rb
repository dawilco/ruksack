class CreateParticipants < ActiveRecord::Migration[6.1]
  def change
    create_table :participants do |t|
      t.string :type
      t.string :first_name
      t.string :last_name

      t.belongs_to :unit, index: true, foreign_key: true
      t.timestamps
    end
  end
end
