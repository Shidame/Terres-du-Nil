require 'resque/tasks'
# load the Rails environment for each workers
task "resque:setup" => :environment
