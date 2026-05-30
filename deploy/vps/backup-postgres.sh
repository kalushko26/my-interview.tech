#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="${PROJECT_DIR:-/root/my-interview.tech}"
BACKUP_DIR="${BACKUP_DIR:-/root/backups/my-interview-postgres}"
RETENTION_DAYS="${RETENTION_DAYS:-14}"

mkdir -p "$BACKUP_DIR"

cd "$PROJECT_DIR"

POSTGRES_DB="$(docker compose exec -T postgres printenv POSTGRES_DB)"
POSTGRES_USER="$(docker compose exec -T postgres printenv POSTGRES_USER)"
TIMESTAMP="$(date +%F-%H%M%S)"
BACKUP_FILE="${BACKUP_DIR}/${POSTGRES_DB}-${TIMESTAMP}.sql.gz"

docker compose exec -T postgres pg_dump -U "$POSTGRES_USER" -d "$POSTGRES_DB" \
  | gzip > "$BACKUP_FILE"

find "$BACKUP_DIR" -type f -name '*.sql.gz' -mtime +"$RETENTION_DAYS" -delete

echo "PostgreSQL backup created: $BACKUP_FILE"
