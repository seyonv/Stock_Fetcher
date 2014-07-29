source 'https://rubygems.org'
ruby '2.0.0'
#ruby-gemset=railstutorial_rails_4_0
gem 'rails', '4.0.0'
gem 'bootstrap-sass','2.3.2.0'
gem 'bcrypt-ruby', '3.0.1'
gem 'faker', '1.1.2'
gem 'will_paginate', '3.0.4'
gem 'bootstrap-will_paginate','0.0.9'
gem 'yahoo-finance',require: 'yahoo_finance'    
gem 'annotate', '~>2.6.5'

group :development, :test do
  gem 'sqlite3', '1.3.7'
  gem 'bundler'
  gem 'json'
  #using mysql instead of sqlite for the database
  gem 'mysql2' 
  #gem 'rspec-rails', '2.14.0'
  gem 'rspec-rails'
  gem 'guard-rspec', '2.5.0'
  gem 'spork-rails', github: 'sporkrb/spork-rails'
  gem 'guard-spork', '1.5.0'
  #updated childprocess from 0.3.6
  gem 'childprocess', '0.5.3'
  gem 'factory_girl_rails', '4.2.1'
  
  #gem 'stock_quote'
end

group :test do
  #updated selenium webdriver from 2.0.0
  gem 'selenium-webdriver', '~> 2.42.0'
  gem 'capybara', '2.1.0'
  gem 'growl', '1.0.3'
  gem 'cucumber-rails', '1.3.0', :require => false
  gem 'database_cleaner', github: 'bmabey/database_cleaner'

end

gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '2.1.1'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails', '2.2.1'
gem 'turbolinks', '1.1.1'
gem 'jbuilder', '1.0.2'

group :doc do
  gem 'sdoc', '0.3.20', require: false
end

group :production do
  gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2'
end 