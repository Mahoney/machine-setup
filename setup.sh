#!/usr/bin/env bash

set -euxo pipefail
IFS=$'\n\t'

main() {

  local git_repo="${1:-https://Mahoney@github.com/Mahoney/machine-setup.git}"
  local role="${2:-personal}"

  echo "==========================================="
  echo "Setting up your mac using $git_repo"
  echo "==========================================="

  pip install --user ansible

  local installdir="/tmp/setupmac-$RANDOM"

  mkdir "$installdir"

  echo
  echo "If asked for a password you may need to use an access token. You may have stored it in LastPass."
  git clone "$git_repo" "$installdir"

  cd "$installdir"
  ansible-playbook -i ./hosts "$role.yml"

  rm -Rfv "$installdir"

  echo "Setup done"

  exit 0
}

main "$@"
