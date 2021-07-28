class AddUrlKeyToOrganization < ActiveRecord::Migration[6.1]
  def change
    add_column :organizations, :url_key, :string, unique: true
  end
end
