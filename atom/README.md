# Manage Atom packages

## Export
apm list --installed --bare >! packages.txt

## Import
apm install --packages-file packages.txt
