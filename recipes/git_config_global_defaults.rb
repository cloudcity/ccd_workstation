execute "set branch autosetupmerge=false" do
  command "git config --global branch.autosetupmerge false"
  user WS_USER
end

execute "set branch autosetuprebase=always" do
  command "git config --global branch.autosetuprebase always"
  user WS_USER
end

execute "set alias amend=commit --amend -C HEAD" do
  command "git config --global alias.amend 'commit --amend -C HEAD'"
  user WS_USER
end

execute "set alias conflicts opens conflicted files in editor" do
  command "git config --global alias.conflicts '!git ls-files --unmerged | cut -c51- | sort -u | xargs $EDITOR'"
  user WS_USER
end
