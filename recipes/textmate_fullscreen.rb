run_unless_marker_file_exists("textmate_fullscreen") do
  directory "/tmp/enormego-EGOTextMateFullScreen" do
    action :create
    owner WS_USER
  end

  execute "download EGOTextMateFullScreen to temp dir" do
    cwd '/tmp/enormego-EGOTextMateFullScreen'
    command "curl -L https://github.com/enormego/EGOTextMateFullScreen/tarball/master | tar zx --strip 1"
    user WS_USER
  end

  execute "build the plugin" do
    command "xcodebuild -project /tmp/enormego-EGOTextMateFullScreen/EGOTextMateFullScreen.xcodeproj -target EGOTextMateFullScreen"
    user WS_USER
  end

  execute "open the plugin" do
    cwd Dir['/tmp/enormego*'].first
    command "open /tmp/enormego-EGOTextMateFullScreen/build/Release/EGOTextMateFullScreen.tmplugin"
    user WS_USER
  end
end
