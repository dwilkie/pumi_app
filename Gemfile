source 'https://rubygems.org'

ruby(File.read(".ruby-version").strip) if File.exist?(".ruby-version")

gem 'rails'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'jbuilder'
gem 'puma'
gem 'pumi', :github => "dwilkie/pumi", :require => "pumi/rails"
gem 'rails_12factor'

group :development, :test do
  gem 'byebug'
  gem 'pry'
end

group :development do
  gem 'foreman'
  gem "listen"
end
