# Contenu du fichier Dockerfile
FROM caddy:latest

# Copier la configuration
COPY Caddyfile /etc/caddy/Caddyfile

# Cloud Run injecte automatiquement un port via la variable $PORT
EXPOSE 8080

# Lancer Caddy avec la configuration
CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]
