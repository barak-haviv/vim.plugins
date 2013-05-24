require 'fileutils'

desc "deploy bundles"
task :deploy do
end

desc "update submodules"
task :update do
  sh "git submodule init"
  sh "git submodule update"
end

desc "pull scripts"
task :pull do
  sh "git submodule foreach git pull --rebase"
  sh "git submodule foreach git submodule init"
  sh "git submodule foreach git submodule update"
end
