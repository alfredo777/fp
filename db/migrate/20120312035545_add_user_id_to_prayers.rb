class AddUserIdToPrayers < ActiveRecord::Migration
  def change
    add_column :prayers, :user_id, :integer

  end
end
