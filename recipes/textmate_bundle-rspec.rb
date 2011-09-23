include_recipe "ccd_workstation::textmate_bundles_directory"

execute "#{WS_HOME}/Library/Application\ Support/TextMate/Bundles/RSpec.tmbundle" do
  command "git clone git://github.com/rspec/rspec-tmbundle.git '#{WS_HOME}/Library/Application\ Support/TextMate/Bundles/RSpec.tmbundle'"
  user WS_USER
  not_if { ::File.exists?("#{WS_HOME}/Library/Application\ Support/TextMate/Bundles/Rspec.tmbundle") }
end

reload_textmate_bundles