class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.decimal :total
      t.decimal :sales_tax
      t.decimal :subtotal

      t.timestamps
    end
  end
end
