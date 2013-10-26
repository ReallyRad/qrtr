set :application, 'qrtr'
set :repo_url, 'git@github.com:ReallyRad/qrtr.git'

# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

set :default_env, { rvm_bin_path: '~/.rvm/bin' }
set :deploy_to, '/var/www/qrtr'
set :scm, :git

# set :format, :pretty
# set :log_level, :debug
# set :pty, true

# set :linked_files, %w{config/database.yml}
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# set :default_env, { path: "/opt/ruby/bin:$PATH" }
# set :keep_releases, 5

namespace :deploy do

  desc "Symlink shared configs and folders on each release."
    task :symlink_shared do
      on roles (:app) do
        execute "cp #{shared_path}/config/database.yml #{release_path}/config/database.yml"
        execute "ln -nfs #{shared_path}/assets #{release_path}/public/assets"
      end
    end

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
       execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
       within release_path do
         execute :rake, 'cache:clear'
       end
    end
  end

  after :deploy, 'deploy:restart'
  before 'deploy:migrate', 'deploy:symlink_shared'
end