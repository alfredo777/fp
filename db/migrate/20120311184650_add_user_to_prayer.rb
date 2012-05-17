class AddUserToPrayer < ActiveRecord::Migration
  def change
    add_column :prayers, :user, :string

  end
end
