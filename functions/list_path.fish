function list_path
  echo "ID"\t"Path"
  set i 1
  for p in $PATH
  	echo $i\t$p
  	set i (math "$i+1")
  end
end