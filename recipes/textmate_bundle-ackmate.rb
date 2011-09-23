include_recipe "ccd_workstation::textmate_bundles_directory"

execute "#{WS_HOME}/Library/Application\ Support/TextMate/Bundles/Ackmate.tmbundle" do
  cwd "#{WS_HOME}/Library/Application\ Support/TextMate/Bundles/"
  command "curl -Lsf https://github.com/downloads/protocool/AckMate/AckMate.1.1.2.zip | tar xvz"
  user WS_USER
  not_if { ::File.exists?("#{WS_HOME}/Library/Application\ Support/TextMate/Bundles/AckMate.tmbundle") }
end

reload_textmate_bundles