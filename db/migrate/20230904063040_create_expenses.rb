class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.datetime :bought_at
      t.integer :price
      t.references :category
      t.references :product

      t.timestamps
    end
  end
end
