template "/etc/rvmrc" do
  owner "root"
  group "wheel"
  mode "0644"
  source "global_rvmrc.erb"
end
