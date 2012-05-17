class AddReligiousAdministrationToUser < ActiveRecord::Migration
  def change
    add_column :users, :religious_administration, :string

  end
end
