#!/bin/sh

echo "setup config"
config="$(jq ".emulators.firestore.port = \"$FIRESTORE_PORT\"" firebase.json)"
echo "$config" > firebase.json
cat firebase.json