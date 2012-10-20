Fp::Application.routes.draw do
  root :to => 'home#web_page'
  

  resources :prayers
    
  
  #get routes  
  get "worldwide"=> "prayers#worldwide"
  get "home/index"
  get "home/web_page"
  get "donate"=>"donate#prayer"
  get "settings"=> "users#settings"
  
   #match routes
  #authentification to the session in omniauth
  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout
  
 
end
