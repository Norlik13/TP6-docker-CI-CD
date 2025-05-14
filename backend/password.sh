#!/bin/sh

# Vérifie si la variable d'environnement DB_PASSWORD_FILE est définie
if [ -z "$DB_PASSWORD_FILE" ]; then
  echo "❌ La variable DB_PASSWORD_FILE n'est pas définie."
  exit 1
fi

# Vérifie si le fichier existe
if [ -f "$DB_PASSWORD_FILE" ]; then
  # Lire le contenu du fichier
  DB_PASSWORD=$(cat "$DB_PASSWORD_FILE")

  # Debug : afficher le mot de passe
  echo "🔐 Mot de passe lu depuis $DB_PASSWORD_FILE : $DB_PASSWORD"

  # Exporter pour qu'il soit disponible dans le reste du script
  export DB_PASSWORD

  # ➕ Lancer ton application backend ici (ex. Node.js)
  exec node src/index.js

else
  echo "❌ Fichier introuvable : $DB_PASSWORD_FILE"
  exit 1
fi
