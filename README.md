```diff
- Use at your own rish
```
# fish-shell
## Functions
###1. list_user_path
It will show the path that you defined by set_user_path. <br>
```
Usage: list_user_path
```
For example,

|ID | Path                               |
|---|------------------------------------|
| 1 | /usr/local/sbin                    |
| 2 | /usr/local/Cellar/sqlite/3.16.2/bin|
| 3 | /Users/quyentruong/node691/bin     |
###2. list_path
It will show the path that you defined by set_user_path and the path in the system. <br>
```
Usage: list_path
```
For example,

|ID | Path                               |
|---|------------------------------------|
| 1 | /usr/local/sbin                    |
| 2 | /usr/local/Cellar/sqlite/3.16.2/bin|
| 3 | /Users/quyentruong/node691/bin     |
| 4 | /usr/local/bin                     |
| 5 | /bin                               |
|...| ...                                |
###3. set_user_path
Add new path to $fish_user_paths
```
Usage: set_user_path "path1" "path2" "..."
```
###4. delete_user_path
Delete path in $fish_user_paths based on ID get from list_user_path.
```
Usage: delete_user_path 3         // delete path with ID = 3
       delete_user_path (seq 3 5) // delete path with ID = 3, 4, 5
```
###5. delete_path
Delete path in $PATH based on ID get from list_path.
```
Usage: delete_path 3         // delete path with ID = 3
       delete_path (seq 3 5) // delete path with ID = 3, 4, 5
```
