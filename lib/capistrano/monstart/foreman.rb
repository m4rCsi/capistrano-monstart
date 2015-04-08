require 'foreman/engine'

module Capistrano
	module Monstart
		class Procs
			def initialize(procfile)
				@foreman = Foreman::Engine.new()
				@foreman.load_procfile(procfile)
			end 

			def procs
				return @foreman
			end
		end
	end
end

