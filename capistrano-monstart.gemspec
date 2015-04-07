lib = File.expand_path('../lib',__FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/monstart/version'


Gem::Specification.new do |s|
  s.name        = 'capistrano-monstart'
  s.version     = Capistrano::Monstart::VERSION
  s.summary     = "capistrano plugin which converts foreman procfile to monit and upstart"
  s.description = ""
  s.authors     = ["Marc Siegenthaler"]
	s.email       = 'shin@marcsi.ch'
	s.files       = `git ls-files`.split($/)
	s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
	s.test_files    = s.files.grep(%r{^(test|spec|features)/})
	s.require_paths = ["lib"]
  s.homepage    =
		'https://github.com/m4rCsi/capistrano-monstart'
  s.license       = 'MIT'

	s.required_ruby_version = '>= 1.9.3'                                                                                                                                                          
	s.add_dependency 'capistrano', '~> 3.1'
	s.add_dependency 'foreman' 
end

