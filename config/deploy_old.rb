# config valid for current version and patch releases of Capistrano
lock "~> 3.12.1"

set :application, 'demo_pg_app'
set :repo_url, 'git@github.com:pravinkarale/Postgre-Demo-App.git'

set :branch, 'master'
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
set :keep_releases, 3

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
#########################################################################################

# config valid for current version and patch releases of Capistrano

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app
set :deploy_to, '/home/ubuntu/projects/'
# set :repo_tree, "pravinkarale"
set :passenger_restart_with_touch, true

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, %w{config/database.yml}

# Default value for linked_dirs is []
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system uploads}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
set :keep_releases, 3

# namespace :deploy do

#   task :copy_files do
#     on roles(:web) do
#       execute :cp, release_path.join('config/environments/production.rb.' + fetch(:deploy_server)), release_path.join('config/environments/production.rb')
#       execute :cp, release_path.join('config/settings.yml.' + fetch(:deploy_server)), release_path.join('config/settings.yml')
#     end
#   end

#   after :restart, :clear_cache do
#     on roles(:app), in: :groups, limit: 3, wait: 10 do
#       within release_path do
#         with rails_env: fetch(:rails_env) do
#           unless fetch(:deploy_server) == "preprod"
#             execute :bundle, :exec, :'bin/delayed_job', fetch(:delayed_job_args, ""), :restart
#           end
#        end
#       end
#     end
#   end
#   before 'deploy:symlink:shared', 'deploy:copy_files'
# end