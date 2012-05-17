source 'https://rubygems.org'

gem 'rails', '3.2.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
gem 'json'
gem 'omniauth'
gem 'omniauth-facebook'
gem "kaminari"
#gem 'execjs'
#gem 'therubyracer'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem "tilt", "~> 1.3.3"
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
#gem 'capistrano'
  group :development, :test do
  gem 'sqlite3', '1.3.6'
  gem 'rspec-rails'
end
group :staging, :production do
  gem 'thin'
  gem 'heroku'
  gem "pg"
  gem 'therubyracer'
  gem 'omniauth'
  gem 'omniauth-facebook'
  gem 'airbrake'
  gem 'uglifier', '>= 1.0.3'
end
