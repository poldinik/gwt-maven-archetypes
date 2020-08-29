#!/bin/sh

function cmd_push {
  branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
  echo "pushing commit on branch: $branch"
  git add .
  git commit -m $1
  git push origin $branch
}

function cmd_pull {
  branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
  echo "run pull on branch: $branch"
  git pull origin $branch
}

function cmd_forcepull() {
  branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
  echo "force pull on branch: $branch"
  git fetch --all
  git reset --hard origin/$branch
}

function cmd_current_branch() {
    branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
    echo "current branch: $branch"
}

function cmd_go() {
    git checkout $1
}

function cmd_branch_list() {
    git branch
}

eval cmd_${1} ${2}
{ set +x; } 2>/dev/null