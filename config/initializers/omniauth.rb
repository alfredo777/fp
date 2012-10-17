Rails.application.config.middleware.use OmniAuth::Builder do
 # provider :developer unless Rails.env.production?
  
 if Rails.env == "production"
  
  provider :facebook, '236652113026256', 'b5bb95a717cca28a8bad746ce9747985',:iframe => true,
           :scope => 'email, user_about_me,user_activities,user_birthday,user_education_history,
                             user_events,user_groups,user_hometown,user_interests,user_likes, user_location,
                             user_religion_politics,
                             user_status,user_work_history,
                             publish_stream, offline_access,
                             friends_about_me'
  end
  
  
  if Rails.env == "development"
  provider :facebook, '220846244674086', '9f4db46eda2de400b51eac00114ea044',:iframe => true, 
           :scope => 'email, user_about_me,user_activities,user_birthday,user_education_history,
                             user_events,user_groups,user_hometown,user_interests,user_likes, user_location,
                             user_religion_politics,
                             user_status,user_work_history,
                             publish_stream, offline_access,
                             friends_about_me'
   end
    
end