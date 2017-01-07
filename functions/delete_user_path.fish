function delete_user_path
  if test (count $argv) -eq 0
    echo "Usage: Run list_user_path to choose ID of path to delete"
    return 1
  end
  set -e fish_user_paths[$argv]
end