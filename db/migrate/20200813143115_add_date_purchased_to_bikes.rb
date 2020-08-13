class AddDatePurchasedToBikes < ActiveRecord::Migration[6.0]
  def change
    add_column :bikes, :date_purchase, :string
  end
end
