# Bootstrap the Bowline environment, frameworks, and default configuration
require File.expand_path(File.join(File.dirname(__FILE__), 'boot'))

Bowline::Initializer.run do |config|
  config.name       = "Hello"
  config.id         = "com.hello"
  config.version    = "0.0.1"
  config.publisher  = "Example"
  config.url        = "http://example.com"
end