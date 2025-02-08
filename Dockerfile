# Use LiveKit's official image
FROM livekit/livekit-server:latest

# Set working directory
WORKDIR /app

# Copy the template and script into the container
COPY config/livekit.template.yaml /app/livekit.template.yaml
COPY generate-config.sh /app/generate-config.sh

# Give execute permission to the script
RUN chmod +x /app/generate-config.sh

# Run the script before starting the server
ENTRYPOINT ["/bin/sh", "-c", "/app/generate-config.sh && /livekit-server --config /app/livekit.yaml"]
