#!/usr/bin/env -S zsh
#: Description : Deploy a existing git-tracked local workspace on a newly created remote repository.
#: Version     : 0.0.1
#: Author      : Aurélien Plazzotta <aurelien.plazzotta@tutanota.com>

set -e # Quit immediately when a command fails
set -x # Print into stdout all executed commands.

INSTALL_DIR="$(dirname $0)"
branch_name="master"

git init
git remote add origin <repo_URI>
git branch -M $branch_name
git fetch origin
git branch -u origin/${branch_name} $branch_name
git remote set-head origin -a
git branch –-set-upstream-to=origin/${branch_name} $branch_name
git push -u origin $branch_name
printf "%s\\n" "The main branched has been renamed to ${branch_name} and reference tracking has been set."
