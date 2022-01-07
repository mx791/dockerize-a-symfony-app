# Comment dockeriser une application Symfony (ou PHP en général)

## Description
Nous utilisons PHP 7.4 avec Apache 2.

## Utilisation
Pour builder l'image
```
docker build -t mon_application_symfony --rm .
```

Pour lancer l'image obtenue :
```
docker run -p 80:80 mon_application_symfony
```