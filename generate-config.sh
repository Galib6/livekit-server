#!/bin/sh
set -e

# Ensure environment variables are available
if [ -z "$API_KEY" ] || [ -z "$API_SECRET" ]; then
  echo "❌ API_KEY or API_SECRET is missing!"
  exit 1
fi

# Replace placeholders in the template and create livekit.yaml
sed "s/API_KEY/${API_KEY}/g; s/API_SECRET/${API_SECRET}/g" /app/livekit.template.yaml > /app/livekit.yaml

echo "✅ livekit.yaml generated successfully!"

