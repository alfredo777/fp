Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :facebook, '236652113026256', 'b5bb95a717cca28a8bad746ce9747985' 
end