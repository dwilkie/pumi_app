source 'https://rubygems.org'

ruby(File.read(".ruby-version").strip) if File.exist?(".ruby-version")

gem 'rails', '4.2.5.1'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'puma'
gem 'pumi', :github => "dwilkie/pumi", :require => "pumi/rails"
gem 'rails_12factor'

group :development, :test do
  gem 'byebug'
end

group :development do
  gem 'foreman'
  gem 'web-console', '~> 2.0'
end
