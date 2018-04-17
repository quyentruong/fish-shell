# fish-shell

[logo]: https://docs.google.com/uc?export=download&id=0B7bIuWhmnPfQYzlNcVVMRXlIaFU "Logo Title Text 2"
Attention ![alt text][logo]
```diff
- Use at your own rish
```

## I. Theme
* I used Oh-my-fish to setup themes.

### Installation
* Run this command in your terminal

```bash
curl -L https://get.oh-my.fish | fish
```

* To install a theme, run this command in your terminal `omf install theme_name`
* Read [here](https://github.com/oh-my-fish/oh-my-fish/blob/master/docs/Themes.md) to preview a list of available themes
For example: I personally use budspencer because it looks nice. I run this command `omf install budspencer`
To make theme budspencer lighter, run 

```bash
set budspencer_colors 000000 333333 666666 ffffff ffff00 ff6600 ff0000 ff0033 3300ff 0000ff 00ffff
00ff00
```

* There are some themes require Powerline fonts. You have to install it. Read [here](https://github.com/powerline/fonts) to see instruction.

* More [information](https://github.com/oh-my-fish/oh-my-fish) about commands of `omf`



## II. Functions

### Introduction

* The reason I wrote these functions to make set $PATH in fish-shell more easier and readable. I only wrote set local path instead of global path because local path may overwrite the global path.

### Installation
* Copy all file extension fish to `$HOME/.config/fish/functions/`

### 1. [list_user_path](https://github.com/quyentruong/fish-shell/blob/master/functions/list_user_path.fish)

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

### 2. [list_path](https://github.com/quyentruong/fish-shell/blob/master/functions/list_path.fish)

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

### 3. [set_user_path](https://github.com/quyentruong/fish-shell/blob/master/functions/set_user_path.fish)

Add new path to $fish_user_paths
```
Usage: set_user_path "path1" "path2" "..."
```
### 4. [delete_user_path](https://github.com/quyentruong/fish-shell/blob/master/functions/delete_user_path.fish)

Delete path in $fish_user_paths based on ID get from list_user_path.
```
Usage: delete_user_path 3         // delete path with ID = 3
       delete_user_path (seq 3 5) // delete path with ID = 3, 4, 5
```
### 5. [delete_path](https://github.com/quyentruong/fish-shell/blob/master/functions/delete_path.fish)

Delete path in $PATH based on ID get from list_path.
```
Usage: delete_path 3         // delete path with ID = 3
       delete_path (seq 3 5) // delete path with ID = 3, 4, 5
```
