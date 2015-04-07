require 'foreman/engine'

$foreman = Foreman::Engine.new()
$foreman.load_procfile(File.expand_path("Procfile", ROOTDIR))