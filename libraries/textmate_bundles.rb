class Chef::Recipe
  def reload_textmate_bundles
    execute "osascript -e 'tell app \"TextMate\" to reload bundles'" do
      command "osascript -e 'tell app \"TextMate\" to reload bundles'"
      user WS_USER
    end
  end
end