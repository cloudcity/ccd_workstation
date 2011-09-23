execute "make textmate bundles directory" do
  command "mkdir -p '#{WS_HOME}/Library/Application\ Support/TextMate/Bundles'"
  user WS_USER
  not_if { File.exists?("#{WS_HOME}/Library/Application\ Support/TextMate/Bundles") }
end
