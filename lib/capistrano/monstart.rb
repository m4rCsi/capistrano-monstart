require 'capistrano/monstart/version'

module Capistrano
	module Monstart
	end
end

require 'capistrano/monstart/template'
require 'capistrano/monstart/foreman'


load File.expand_path('../tasks/test.cap', __FILE__)
load File.expand_path('../tasks/monstart.cap', __FILE__)
load File.expand_path('../tasks/monit.cap', __FILE__)
