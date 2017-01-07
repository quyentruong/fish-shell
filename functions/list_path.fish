function list_path
  set i 1
  for p in $PATH
  	echo [$i]$p
  	set i (math "$i+1")
  end
end