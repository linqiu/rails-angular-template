# Scaffolding Template with Angular, Bootstrap and e'rthing else we need
# author:   Lin Qiu
# contact:  theonlylinqiu@gmail.com

puts "Yao, we startin' some thangs!"

puts "Adding: AngularJS"
gem "angularjs-rails"
puts "Don't forget to add //= require angular to your application.js file!"

puts "Adding: MySQL"
gem 'mysql2'

puts "FrontEnd Stuff"
puts "Adding: Bootstrap, Compass"
gem 'bootstrap-sass'
gem 'compass'

puts "Adding: unicorn"
gem 'unicorn'

puts "adding some dev gems"
gem_group :development, :test do
  gem 'dotenv-rails'
  gem "rspec-rails"
  gem "better_errors"
  gem "binding_of_caller"
  gem "meta_request"
  gem 'capybara'
  gem 'pry'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
  gem 'pry-debugger'
end

initializer 'better_errors.rb', <<-CODE
BetterErrors.editor = :sublime if defined? BetterErrors
CODE

git :init
git add: "."
git commit: "-a -m 'Initial commit'"