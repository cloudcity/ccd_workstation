execute "set branch autosetupmerge=false" do
  command "git config --global branch.autosetupmerge false"
  user WS_USER
end

execute "set branch autosetuprebase=always" do
  command "git config --global branch.autosetuprebase always"
  user WS_USER
end
