class AddEventToOrganization < ActiveRecord::Migration[6.1]
  def change
    add_reference :events, :organization, index: true
  end
end
