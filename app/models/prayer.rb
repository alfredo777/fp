class Prayer < ActiveRecord::Base
 belongs_to :user
 paginates_per 5
 def up
   
  add_column :user
 end
end
