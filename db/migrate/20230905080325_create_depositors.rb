class CreateDepositors < ActiveRecord::Migration[7.0]
  def change
    create_table :depositors do |t|
      t.string :name
      t.integer :amount
      t.references :budget

      t.timestamps
    end
  end
end
