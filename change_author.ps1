# Change git author for all commits
git filter-branch --env-filter `
    'if [ "$GIT_COMMITTER_NAME" = "Aishu7-5" ]; then `
    export GIT_COMMITTER_NAME="ashley-1318"; `
    export GIT_COMMITTER_EMAIL="ashleyofficial2004@gmail.com"; `
  fi; `
  if [ "$GIT_AUTHOR_NAME" = "Aishu7-5" ]; then `
    export GIT_AUTHOR_NAME="ashley-1318"; `
    export GIT_AUTHOR_EMAIL="ashleyofficial2004@gmail.com"; `
  fi' -- --all
