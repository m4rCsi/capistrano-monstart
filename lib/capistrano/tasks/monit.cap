namespace :monit do
  desc "Install Monit"
  task :install do
    on roles :all do 
      execute :sudo, "yum -y install monit"
    end
  end

  %w[start stop restart reload status].each do |command|
    desc "Run Monit #{command} script"
    task command do
      on roles :all do
        execute  :sudo, "service monit #{command}"
      end
    end
  end
end