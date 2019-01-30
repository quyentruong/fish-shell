function set_user_path
  if test (count $argv) -eq 0
  	echo "Usage: set_user_path /.../bin /.../.../bin"
  	echo "Use \" if path has space. Ex: \"/App Server/bin\""
  	return 1
  end
  for x in $argv
    if test -z "$prompt"
        set prompt "Continue?"
    end

    while true
        read -p 'set_color green; echo -n "$prompt [y/N]: "; set_color normal' -l confirm

        switch $confirm
            case Y y
                set fish_user_paths $fish_user_paths $x
                return 0
            case '' N n
                return 1
        end
    end

  end
end
