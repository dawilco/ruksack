class AddEventUrlToEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :url, :string
    add_column :events, :description, :text
  end
end
