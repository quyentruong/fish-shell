function list_user_path
  set i 1
  for p in $fish_user_paths
  	echo [$i]$p
  	set i (math "$i+1")
  end
end