function delete_path
  if test (count $argv) -eq 0
    echo "Usage: Run list_path to choose ID of path to delete"
    return 1
  end
  set -e PATH[$argv]
end