version = os_x_point_version
`pkgutil --pkgs=com.apple.pkg.JavaForMacOSX10#{version}`
if $? != 0

  remote_file "/tmp/java.dmg" do
    source node["java_download_uri"]
    mode "0644" 
  end

  execute "mount java dmg" do
    command "hdid /tmp/java.dmg"
    user WS_USER
  end

  execute "intall java" do
    command "installer -pkg /Volumes/Java\\ for\\ Mac\\ OS\\ X\\ 10.#{version}/JavaForMacOSX10.7.pkg -target /"
  end

  execute "unmount dmg" do
    command "hdiutil detach /Volumes/Java\\ for\\ Mac\\ OS\\ X\\ 10.#{version}"
    user WS_USER
  end

  ruby_block "test to see if java was installed" do
    block do
      `pkgutil --pkgs=com.apple.pkg.JavaForMacOSX10#{version}`
      raise "Java install failed" if $? != 0
    end
  end
end
