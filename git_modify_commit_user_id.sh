#!/bin/sh

git filter-branch -f --env-filter '
OLD_EMAIL="mail@example.com"
NEW_NAME="myNewName"
NEW_EMAIL="new_mail@example.com"

if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
export GIT_COMMITTER_NAME="$NEW_NAME"
export GIT_COMMITTER_EMAIL="$NEW_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
export GIT_AUTHOR_NAME="$NEW_NAME"
export GIT_AUTHOR_EMAIL="$NEW_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags
