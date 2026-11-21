# Vaultwarden on SQLite: locked-down demo. Signups are disabled; Ryan creates
# the demo account from /admin using the generated ADMIN_TOKEN. Data (SQLite
# database) persists on the volume at /data.
FROM vaultwarden/server:1.37.5-alpine

ENV DOMAIN=https://vaultwarden.poc.ardotconsulting.com
ENV SIGNUPS_ALLOWED=false
ENV INVITATIONS_ALLOWED=false
ENV SHOW_PASSWORD_HINT=false

EXPOSE 80
