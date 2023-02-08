source "https://rubygems.org"

ruby File.readlines(".tool-versions").grep(/ruby/).first.match(/(?:\d+\.)?(?:\d+\.)?(?:\*|\d+)/)[0]

gem "coffee-rails"
gem "jbuilder"
gem "jquery-rails"
gem "puma"
gem "pumi", github: "dwilkie/pumi", require: "pumi/rails"
gem "rails"
gem "sass-rails"
gem "uglifier"

group :development, :test do
  gem "byebug"
  gem "pry"
  gem "rspec-rails"
end

group :development do
  gem "listen"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
