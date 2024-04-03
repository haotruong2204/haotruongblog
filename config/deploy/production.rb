set :stage, :production
set :rails_env, :production
set :rack_env, :production
set :branch, 'main'
set :deploy_to, '/var/www/haotruongblog'

server "18.143.6.14", user: "ubuntu", roles: %w{app db web}
