#!/bin/bash

echo "Début de l'installation de Docker et Docker Compose"

# Vérifier si l'utilisateur a les droits d'administrateur
if [ "$EUID" -ne 0 ]
  then echo "Veuillez exécuter ce script en tant qu'administrateur"
  exit
fi

# Mettre à jour le système
echo "Mise à jour du système en cours..."
apt update > /dev/null && apt upgrade -y > /dev/null
echo "Mise à jour terminée"

# Installer les dépendances nécessaires
echo "Installation des dépendances en cours..."
apt install -y apt-transport-https ca-certificates curl gnupg lsb-release > /dev/null
echo "Installation des dépendances terminée"

# Ajouter la clé GPG de Docker
echo "Ajout de la clé GPG de Docker en cours..."
curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg > /dev/null
echo "Clé GPG ajoutée"

# Ajouter le dépôt Docker
echo "Ajout du dépôt Docker en cours..."
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
echo "Dépôt Docker ajouté"

# Installer Docker
echo "Installation de Docker en cours..."
apt update > /dev/null
apt install -y docker-ce docker-ce-cli containerd.io > /dev/null
echo "Docker installé"

# Ajouter l'utilisateur courant au groupe docker
echo "Ajout de l'utilisateur courant au groupe docker en cours..."
usermod -aG docker $USER > /dev/null
echo "Utilisateur courant ajouté au groupe docker"

# Installer Docker Compose
echo "Installation de Docker Compose en cours..."
COMPOSE_VERSION=$(curl https://api.github.com/repos/docker/compose/releases/latest | grep tag_name | cut -d'"' -f4)
curl -L "https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" \
    -o /usr/local/bin/docker-compose > /dev/null
chmod +x /usr/local/bin/docker-compose > /dev/null
echo "Docker Compose installé"

echo "Fin de l'installation de Docker et Docker Compose"
