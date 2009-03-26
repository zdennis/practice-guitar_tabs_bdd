require 'spec'
require File.dirname(__FILE__) + '/../lib/guitar_tabs'
        
# gem install redgreen for colored test output
begin require "redgreen" unless ENV['TM_CURRENT_LINE']; rescue LoadError; end
  
Spec::Runner.configure do |config|
  # spec config goes here
end


