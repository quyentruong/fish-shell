function set_user_path
  if test (count $argv) -eq 0
  	echo "Usage: set_user_path /.../bin /.../.../bin"
  	echo "Use \" if path has space. Ex: \"/App Server/bin\""
  	return 1
  end
  for x in $argv
    set fish_user_paths $fish_user_paths $x
  end
end