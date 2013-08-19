# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Kickstarter::Application.initialize!
silence_warnings do
        begin
            require 'pry'
            IRB = Pry
        rescue LoadError
        end
    end

