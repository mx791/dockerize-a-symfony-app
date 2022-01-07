# Comment dockeriser une application Symfony (ou PHP en général)

## Description



## Utilisation

Pour builder l'image
```
docker build -t -rm mon_application_symfony .
```

Pour lancer l'image obtenue :
```
docker run -p 80:80 mon_application_symfony
```