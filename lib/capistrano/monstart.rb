require 'capistrano/templ'

module Capistrano
	module Monstart
	end
end

require 'capistrano/monstart/foreman'

# Load Tasks
load File.expand_path('../monstart/tasks/monstart.cap', __FILE__)
load File.expand_path('../monstart/tasks/monit.cap', __FILE__)
