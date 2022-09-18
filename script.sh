#!/usr/bin/env sh

_() {
  echo "GitHub Username: "
  read -r USERNAME

  echo "GitHub Access token: "
  read -r ACCESS_TOKEN

  echo "Initial year (YYYY):"
  read -r YEAR

  echo "Branch principal (master/main):"
  read -r BRANCH

  [ -z "$USERNAME" ] && exit 1
  [ -z "$ACCESS_TOKEN" ] && exit 1  

  for year in $(seq $YEAR 1 2022)
    do
    git checkout -b "$year-commit"

        for month in $(seq 1 1 12)
          do

            for day in $(seq 1 1 31)
            do
                GIT_AUTHOR_DATE="${year}-${month}-${day}T18:00:00" \
                GIT_COMMITTER_DATE="${year}-${month}-${day}T18:00:00" \
                git commit --allow-empty -m "Commited on ${year}-${month}-${day}T18:00:00"
            done
        done

    git checkout "${BRANCH}"
    git merge "$year-commit" --allow-unrelated-histories
    git push -u origin "${BRANCH}" -f
  done

} && _

unset -f _