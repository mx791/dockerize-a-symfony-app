# Comment dockeriser une application Symfony (ou PHP en général)

## Description
Nous utilisons PHP 7.4 avec Apache 2.
OpCache a été configuré selon les recommandations de la documentation officielle de Symfony.
Plus d'info sur : https://symfony.com/doc/current/performance.html#configure-opcache-for-maximum-performance

## Utilisation
Pour builder l'image
```
docker build -t mon_application_symfony --rm .
```

Pour lancer l'image obtenue :
```
docker run -p 80:80 mon_application_symfony
```