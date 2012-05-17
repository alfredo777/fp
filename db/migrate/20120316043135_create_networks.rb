class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.string :religious_organization
      t.string :administration
      t.string :activities

      t.timestamps
    end
  end
end
