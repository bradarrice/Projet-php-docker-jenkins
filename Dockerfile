# Utilisation d'une image PHP de base
FROM php:7.4-apache
# Installation des dépendances PHP nécessaires
RUN docker-php-ext-install mysqli pdo pdo_mysql
# Copie des fichiers de l'application dans le conteneur
COPY . /var/www/html
# Exposition du port du serveur web (généralement 80)
EXPOSE 82
# Commande pour démarrer le serveur web
CMD ["apache2-foreground"]