Rails.application.config.middleware.use OmniAuth::Builder do
 # provider :twitter, 'CONSUMER_KEY', 'CONSUMER_SECRET'
  provider :facebook, '236652113026256', '2664f2d6baffca7f5425e5914bf37e6c',:iframe => true, 
  
    :scope => 'email, user_about_me,user_activities,user_birthday,user_education_history,
                      user_events,user_groups,user_hometown,user_interests,user_likes, user_location,
                      user_religion_politics,
                      user_status,user_work_history,
                      publish_stream, offline_access,
                      friends_about_me'
end