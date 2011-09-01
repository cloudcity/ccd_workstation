run_unless_marker_file_exists("bash_current_bin_in_path") do
  ruby_block "put ./bin first in path" do
    block do
      new_contents = ""
      File.open("/etc/paths", "r") do |file|
        new_contents = "./bin\n"+file.read.gsub("./bin\n", "")
      end
      File.open("/etc/paths", "w") do |file|
        file.write(new_contents)
      end
    end
  end
end