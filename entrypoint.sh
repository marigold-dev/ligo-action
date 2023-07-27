#!/bin/bash

cat <<EOF
Script launched with arguments : 
ligo_version: $INPUT_LIGO_VERSION
working_directory: $INPUT_WORKING_DIRECTORY
Command: $INPUT_COMMAND
EOF

echo "Downloading and installing ligo, version $INPUT_LIGO_VERSION"
curl -o ligo $(curl "https://gitlab.com/api/v4/projects/12294987/releases/$INPUT_LIGO_VERSION" | jq -r '.assets.links[] | select(.name == "Static Linux binary") | .url')
chmod +x ligo
mv ligo /usr/bin

echo "Executing \"ligo $INPUT_COMMAND\" in  $INPUT_WORKING_DIRECTORY"
(
  cd $INPUT_WORKING_DIRECTORY
  /usr/bin/ligo $INPUT_COMMAND
)
