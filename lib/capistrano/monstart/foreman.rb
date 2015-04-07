require 'foreman/engine'

module Capistrano
	module Monstart
		class Procs
			def initialize(procfile)
				foreman = Foreman::Engine.new()
				foreman.load_procfile(procfile)#File.expand_path("../../../Procfile", File.dirname(__FILE__)))
			end 
		end
	end
end

