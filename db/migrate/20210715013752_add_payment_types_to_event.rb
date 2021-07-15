class AddPaymentTypesToEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :payment_types, :string, array: true, default: []
  end
end
