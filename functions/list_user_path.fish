function list_user_path -d "list_user_path"
  echo "ID"\t"Path"
  set i 1
  set color1 (random choice {brred, brgreen, bryellow, brblue, brmagenta, brcyan, brwhite})
  set color2 (random choice {brred, brgreen, bryellow, brblue, brmagenta, brcyan, brwhite})
  for p in $fish_user_paths
    set_color "$color1"
    if test (math "$i%2") -eq 0
        set_color "$color2"
    end
  	echo $i\t$p
  	set i (math "$i+1")
  end
end
