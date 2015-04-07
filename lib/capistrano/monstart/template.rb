require 'erb'
require 'ostruct'

def erb(template, vars)
  ERB.new(File.read(template)).result(OpenStruct.new(vars).instance_eval { binding })
end

def template(template,to,vars ={})
	res = erb(File.expand_path("templates/#{template}", File.dirname(__FILE__)),vars)
  tmp_file = "/tmp/cap_erb_tmp_file"
  upload! StringIO.new(res), tmp_file
  execute :sudo, "mv #{tmp_file} #{to}"
end
