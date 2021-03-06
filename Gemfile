source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '>= 5.0.0.rc1', '< 5.1'

gem 'mysql2'
gem 'sqlite3'

# Use Puma as the app server
gem 'puma', '>= 3.0'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.0'

# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 3.0'

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
gem 'capistrano-rails', group: :development

# gem 'active_model_serializers', '~> 0.10.0.rc4', '< 0.10.0.rc5'

gem 'faker', :git => "https://github.com/stympy/faker.git"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

# Authentication gems
gem 'devise'
# Token based authentication for Rails JSON APIs
gem 'devise_token_auth', github:"lynndylanhurley/devise_token_auth", branch: "master"
# required for devise_token_auth
gem 'omniauth'

# Authorization gems
gem 'pundit'

# Config gem
gem 'config'

# Gem for auditing
gem 'audited', github: 'Partyista/audited', branch: 'rails5-pr-work'

gem 'rails-observers', github: 'rails/rails-observers'

# Managing versions
gem 'versioncake', github: 'bwillis/versioncake'

# Manage resources for different response types
gem 'rabl'
gem 'rabl-rails', github: 'ccocchi/rabl-rails', branch: '0.5.x'

gem 'multi_json', :git => 'https://github.com/intridea/multi_json.git'

# Optimize the json parser
gem 'oj'
gem 'oj_mimic_json'
gem 'yajl-ruby', require: 'yajl'

# Rendering REST documents
# gem 'roar-rails'
# gem 'responders'

# Serialization types gems
gem 'bson'
gem 'plist'
gem 'msgpack'

# # Add admin page for development
# gem 'activeadmin', github: 'activeadmin'
#
# gem 'ransack',    github: 'activerecord-hackery/ransack'
# gem 'kaminari',   github: 'amatsuda/kaminari', branch: '0-17-stable'
# gem 'formtastic', github: 'justinfrench/formtastic'
# gem 'draper',     github: 'audionerd/draper', branch: 'rails5', ref: 'e816e0e587'

# To fix a Draper deprecation error
# gem 'activemodel-serializers-xml', github: 'rails/activemodel-serializers-xml'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri

  gem 'shoulda-matchers'

  gem 'capybara'

  gem 'database_cleaner'

  gem 'factory_girl_rails'

  gem 'rspec-api_helpers', github: 'kollegorna/rspec-api_helpers'

  gem 'rails-controller-testing',  github: 'rails/rails-controller-testing'

  gem 'rspec-rails', '>= 3.5.0.beta1'

  gem 'database_cleaner'

end

group :development do
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-sidekiq'
  gem 'capistrano-puma', require: false
  gem 'capistrano-rvm',   '~> 0.1', require: false
  gem 'web-console', '~> 2.0'

  # Better debuging tools
  gem 'better_errors'

  # Diagrams generators
  gem 'rails-erd', :git => 'https://github.com/voormedia/rails-erd.git'


end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
