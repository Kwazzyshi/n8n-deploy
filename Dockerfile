FROM n8nio/n8n:1.39.1

# Expose n8n default port
EXPOSE 5678

# Core runtime configuration
ENV N8N_HOST=0.0.0.0 \
    N8N_PORT=5678 \
    N8N_PROTOCOL=https \
    N8N_EDITOR_BASE_URL=https://n8n-deploy-aold.onrender.com/workflow/rtsaYYf3UpyWDxff
    WEBHOOK_URL=https://YOUR-APP-NAME.onrender.com \
    N8N_BASIC_AUTH_ACTIVE=true \
    N8N_USER_FOLDER=/home/node/.n8n

# Start n8n
CMD ["start"]
