class AddPaymentStatusToQuote < ActiveRecord::Migration[5.0]
  def change
    add_column :quotes, :payment_status, :string
  end
end
