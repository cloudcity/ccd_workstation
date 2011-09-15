class Chef::Recipe
  def os_x_point_version
    /Mac\ OS\ X\ 10\.(\d+)/.match(`system_profiler SPSoftwareDataType`)[1]
  end
end