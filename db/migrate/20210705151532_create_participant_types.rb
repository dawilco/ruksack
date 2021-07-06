class CreateParticipantTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :participant_types do |t|
      t.string :name
      t.integer :max_participants_registration
      t.integer :min_participants_registration
      t.integer :max_participants_session

      t.belongs_to :event, index: true, foreign_key: true
      t.timestamps
    end
  end
end
