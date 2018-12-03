# Bring in the contents of the `app.rb` file
require 'simplecov'
require 'simplecov-console'
SimpleCov.start

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  SimpleCov::Formatter::HTMLFormatter
])

