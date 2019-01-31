function delete_path
  if test (count $argv) -eq 0
    echo "Usage: Run list_path to choose ID of path to delete"
    return 1
  end

  if echo "$argv" | grep -q -E '^\(seq|^[0-9]+'
    if test -z "$prompt"
        set prompt "Continue?"
    end

    while true
        read -p 'set_color green; echo -n "$prompt [y/N]: "; set_color normal' -l confirm

        switch $confirm
            case Y y
                for x in $argv
                  set -e PATH[$x]
                end
                return 0
            case '' N n
                return 1
        end
    end

  else
    echo "Only accpet number"
    return 1
  end

end
