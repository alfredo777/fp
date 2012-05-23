class User < ActiveRecord::Base
   has_many :prayers
   has_many :sessions
   def self.create_with_omniauth(omniauth)

   create! do |user|
       user.provider = omniauth["provider"]
       user.uid = omniauth["uid"]
       user.name = omniauth["info"]["name"]
       user.image = omniauth["info"]["image"]
       user.token = omniauth["credentials"]["token"]
       if user.save        
         redirect_to "/auth/:provider/callback", :notice => 'User wass full created'
       else
         redirect_to root_url, :notice => 'User not created' 
       end
     end
     
    def self.create_from_hash!(hash)
      create(:name => hash['info']['name'])
    end


   end
end
