#!/bin/bash

API_URL="https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent"
API_KEY="YOUR_API_KEY"

if [ -z "$1" ]; then
  echo "Usage: ai \"your question here\""
  exit 1
fi

QUESTION="$1"
PAYLOAD=$(cat <<EOF
{
  "contents": [{
    "parts": [{"text": "$QUESTION"}]
  }]
}
EOF
)

RESPONSE=$(curl -s -X POST \
  -H "Content-Type: application/json" \
  -d "$PAYLOAD" \
  "$API_URL?key=$API_KEY")

if command -v jq &> /dev/null; then
  echo "$RESPONSE" | jq -r '.candidates[0].content.parts[0].text'
else
  echo "$RESPONSE" | grep -oP '(?<="text":")[^"]*'
fi
