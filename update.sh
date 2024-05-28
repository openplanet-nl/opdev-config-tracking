#!/bin/bash
curl -s https://openplanet.dev/api/config | jq > config.json

if [ -s config.json ]; then
	git add config.json
fi

git commit -m "$(date)"
git push origin main
