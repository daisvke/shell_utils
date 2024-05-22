# shell_utils
A set of shell utils

### convert_png_to_xpm_and_del_png.sh
Converts all the PNG files of the current directory to XPM files.
Then, it deletes all the PNG files that have just been converted.

### git_modify_commit_user_id.sh
Searches for all the commits with the given email in the history of the current git repository.
Then, it updates them with the new email address + new username.

When pushing, use the command above:
```
git push --force --all
```
### git_modify_commit_user_id.sh
Remove all trace of the given file from the git history.

When pushing, use the command above:
```
git push --force --all
```

### replace_part_of_filename.sh
Searches for all the files in the current directory whose titles contain the given expression.
Then, it replaces the expression inside the titles with the new one.
