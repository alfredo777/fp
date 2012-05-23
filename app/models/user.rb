class User < ActiveRecord::Base
   has_many :prayers
   has_many :sessions
   def self.create_with_omniauth(omniauth)

     def create do |user|
       user.id
       user.provider = omniauth["provider"]
       user.uid = omniauth["uid"]
       user.name = omniauth["info"]["name"]
       user.image = omniauth["info"]["image"]
       user.token = omniauth["credentials"]["token"]
      user.save
     end
     
    def self.create_from_hash!(hash)
      create(:name => hash['info']['name'])
    end


   end
end
