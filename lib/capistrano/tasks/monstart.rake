namespace :monstart do
  task :setup do
    on roles :all do 
      $foreman.each_process do |n, process|
        name =  fetch(:application) + "-#{n}"
        exe =   process.command

        d = {
          current_path: current_path,
          pidfile:      "/var/run/#{name}.pid",
          name:         name,
          wrapper:      fetch(:rvm1_alias_name),
          exe:          exe 
        }

        template 'upstart.conf.erb',  "/etc/init/#{name}.conf", d
        template 'monit.erb',         "/etc/monit.d/#{name}",   d
      end
    end
  end

  task :restart do 
    on roles :all do 
      $foreman.each_process do |n, process|
			  name =  fetch(:application) + "-#{n}"

				execute  :sudo, :monit, :restart, name
      end
    end
  end

  task :summary do
    on roles :all do
      puts capture :sudo, :monit, :summary
    end
  end

  task :status do
    on roles :all do
      puts capture :sudo, :monit, :status
    end
  end
end
