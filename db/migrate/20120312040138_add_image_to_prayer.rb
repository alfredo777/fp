class AddImageToPrayer < ActiveRecord::Migration
  def change
    add_column :prayers, :image, :string

  end
end
