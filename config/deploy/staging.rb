set :stage, :staging
set :rails_env, :staging
set :rack_env, :staging
set :branch, 'main'
set :deploy_to, '/var/www/haotruongblog'

server "18.143.6.14", user: "ubuntu", roles: %w{app db web}
