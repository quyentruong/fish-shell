function list_path  --description "list_path"
  echo "ID"\t"Path"
  set i 1
  # set color1 (printf "%02x%02x%02x" (random 100 150) (random 100 150) (random 100 150))
  # set color2 (printf "%02x%02x%02x" (random 150 255) (random 150 255) (random 150 255))
  set color1 (random choice {brred, brgreen, bryellow, brblue, brmagenta, brcyan, brwhite})
  set color2 (random choice {brred, brgreen, bryellow, brblue, brmagenta, brcyan, brwhite})
  for p in $PATH
    set_color "$color1"
    if test (math "$i%2") -eq 0
        set_color "$color2"
    end
  	echo $i\t$p
  	set i (math "$i+1")
  end
end
