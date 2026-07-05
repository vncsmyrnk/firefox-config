default:
  just --list

config:
  stow --no-folding -t "{{home_dir()}}/.mozilla/firefox" .
  sudo install policies.json /usr/lib/firefox/distribution

unset-config:
  stow -D -t "{{home_dir()}}/.mozilla/firefox" .
  sudo rm -i /usr/lib/firefox/distribution/policies.json
