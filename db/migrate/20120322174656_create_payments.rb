class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :title
      t.integer :amount

      t.timestamps
    end
  end
end
