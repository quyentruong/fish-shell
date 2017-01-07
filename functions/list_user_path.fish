function list_user_path
  echo "ID"\t"Path"
  set i 1
  for p in $fish_user_paths
  	echo $i\t$p
  	set i (math "$i+1")
  end
end