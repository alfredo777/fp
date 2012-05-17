class AddNameToPrayer < ActiveRecord::Migration
  def change
    add_column :prayers, :name, :string

  end
end
