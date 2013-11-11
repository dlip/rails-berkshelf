group node[:rails][:group]

user node[:rails][:user] do
  group node[:rails][:group]
  system true
  shell "/bin/bash"
end

include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

# Ruby
rbenv_ruby node[:rails][:ruby][:version]

group "rbenv" do               
  action :create               
  members "vagrant"            
  gid 1100
  append true
end     

bash "chgrp and chmod" do
  user "root"
  cwd "/opt"
  code <<-EOH
    chgrp -R rbenv rbenv
    chmod -R g+rwxX rbenv
  EOH
end

# Gems
rbenv_gem "bundler" do
  ruby_version node[:rails][:ruby][:version]
end

rbenv_gem "rails" do
  ruby_version node[:rails][:ruby][:version]
end
