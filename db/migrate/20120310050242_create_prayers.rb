class CreatePrayers < ActiveRecord::Migration
  def change
    create_table :prayers do |t|
      t.text :pray

      t.timestamps
    end
  end
end
