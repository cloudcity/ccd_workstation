version = os_x_point_version
`pkgutil --pkgs=com.apple.pkg.Java`
if $? != 0
  case version
  when "6"
    pivotal_workstation_package "JavaForMacOSX10.6" do
      source "http://support.apple.com/downloads/DL1360/en_US/JavaForMacOSX10.6Update5.dmg"
      volumes_dir "Java for Mac OS X 10.6"
      action :install
      type "mpkg"
      package_id "com.apple.pkg.JavaForMacOSX106"
      checksum "ea5515c0a8567a028a9e05f78c4e0a07ecac610018c5c32c6aeec2144663d7af"
    end
  when "7"
    pivotal_workstation_package "JavaForMacOSX10.7" do
      source "http://support.apple.com/downloads/DL1421/en_US/JavaForMacOSX10.7.dmg"
      volumes_dir "Java for Mac OS X 10.7"
      action :install
      type "mpkg"
      package_id "com.apple.pkg.JavaForMacOSX107"
      checksum "4c32d32cfeaaf4aab539a1385c4f55a97cf09c7d396f8b43257161616bba7070"
    end
  end
end
