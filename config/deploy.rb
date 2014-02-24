# replace this with your site's name
set :application, "Docs"
set :repository, 'dist'
set :scm, :none
set :deploy_via, :copy
set :copy_compression, :gzip
set :use_sudo, false

set :user, "jirafe-admin"

set :deploy_to, "/opt/jirafe/docs"

# the ip address of your VPS
role :app, ['prod-frontend-01-rsiad.int.jirafe.net', 'prod-frontend-02-rsiad.int.jirafe.net']

before 'deploy:update', 'deploy:update_jekyll'

namespace :deploy do
  [:start, :stop, :restart, :finalize_update].each do |t|
    desc "#{t} task is a no-op with jekyll"
    task t, :roles => :app do ; end
  end

  desc 'Run jekyll to update site before uploading'
  task :update_jekyll do
    # clear existing _site
    # build site using jekyll
    # remove Capistrano stuff from build
    %x(rm -rf dist/* && jekyll build)
  end
end