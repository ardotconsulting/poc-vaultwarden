# Vaultwarden on SQLite: locked-down demo. Signups are disabled; Ryan creates
# the demo account from /admin using the generated ADMIN_TOKEN. Data (SQLite
# database) persists on the volume at /data (mounted by Coolify in production).
# I_REALLY_WANT_VOLATILE_STORAGE lets the smoke test pass (no volume in CI);
# in production the persistent volume is mounted, so it's a no-op.
FROM vaultwarden/server:1.37.5-alpine

ENV DOMAIN=https://vaultwarden.poc.ardotconsulting.com
ENV SIGNUPS_ALLOWED=false
ENV INVITATIONS_ALLOWED=false
ENV SHOW_PASSWORD_HINT=false
ENV I_REALLY_WANT_VOLATILE_STORAGE=true

EXPOSE 80
