RAILS_GEM_VERSION = '2.3.8' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|

  config.gem 'pauldix-feedzirra',:lib => 'feedzirra',:source => 'http://gems.github.com',:version => '0.0.18'
  config.gem 'haml',:version => '3.0.15'
  config.time_zone = 'UTC'

end

