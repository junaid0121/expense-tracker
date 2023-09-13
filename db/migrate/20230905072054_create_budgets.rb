class CreateBudgets < ActiveRecord::Migration[7.0]
  def change
    create_table :budgets do |t|
      t.integer :month
      t.references :category

      t.timestamps
    end
  end
end
