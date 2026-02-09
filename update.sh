#!/bin/bash
curl -s https://api.openplanet.dev/config | jq > config.json

if [ -s config.json ]; then
	git add config.json
fi

git commit -m "$(date)"
git push origin main
