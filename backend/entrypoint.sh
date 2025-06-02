#!/bin/bash
set -e

until php artisan migrate:fresh --force; do
  echo "Esperando a que la base de datos esté lista..."
  sleep 5
done
until php artisan db:seed --force; do
  echo "Esperando a que la base de datos esté lista para el seeding..."
  sleep 5
done

# Arrancar Apache en primer plano
apache2-foreground