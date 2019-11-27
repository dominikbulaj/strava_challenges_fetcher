#!/usr/bin/env bash

START_ID=$(cat last_id)
END_ID=$((START_ID + 20))
echo "Checking challenges from ID ${START_ID} to ${END_ID}"

for i in $(seq "$START_ID" $END_ID); do
  CURL_URL="https://www.strava.com/challenges/${i}"
  TITLE=$(curl -s "$CURL_URL" | awk -F "<" '/<title>/ {print $2}' | awk -F ">" '{print $2}')
  if [ "$TITLE" ]; then
    echo "${CURL_URL} - ${TITLE}"
    echo $((i + 1)) >last_id #save last available challenge id to file
  fi
done
