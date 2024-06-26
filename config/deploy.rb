# config valid for current version and patch releases of Capistrano
lock "~> 3.18.1"

set :application, "haotruongblog"
set :repo_url, "git@github.com:haotruong2204/haotruongblog.git"


set :rvm_type, :ubuntu
set :default_shell, "/bin/bash -l"

set :pty, true
set :keep_releases, 2
set :linked_files, %w{.env}
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/upload}
set :bundle_binstubs, nil

set :puma_rackup, -> { File.join(current_path, "config.ru") }
set :puma_state, -> { "#{shared_path}/tmp/pids/puma.state" }
set :puma_pid, -> { "#{shared_path}/tmp/pids/puma.pid" }
set :puma_bind, -> { "unix://#{shared_path}/tmp/sockets/puma.sock" }
set :puma_conf, -> { "#{shared_path}/puma.rb" }
set :puma_access_log, -> { "#{shared_path}/log/puma_access.log" }
set :puma_error_log, -> { "#{shared_path}/log/puma_error.log" }
set :puma_role, :app
set :puma_env, fetch(:stage, "production")
set :puma_threads, [4, 16]
set :puma_workers, 0
set :puma_worker_timeout, nil
set :puma_init_active_record, true

set :rvm_ruby_string, :local
set :ssh_options, {
  forward_agent: true,
  auth_methods: %w{publickey}
}
