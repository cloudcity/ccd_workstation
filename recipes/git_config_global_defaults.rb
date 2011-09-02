execute "set branch autosetuprebase=true" do
  command "git config --global branch.autosetuprebase true"
  user WS_USER
end
