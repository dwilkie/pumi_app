source "https://rubygems.org"

ruby(File.read(".ruby-version").strip) if File.exist?(".ruby-version")

gem "coffee-rails"
gem "jbuilder"
gem "jquery-rails"
gem "puma"
gem "pumi", github: "dwilkie/pumi", require: "pumi/rails"
gem "rails"
gem "rails_12factor"
gem "sass-rails"
gem "uglifier"

group :development, :test do
  gem "byebug"
  gem "pry"
end

group :development do
  gem "foreman"
  gem "listen"
end
