# Atlassian Hetzner
Docker scripts to rapid deployment of Atlassian Confluence / JIRA to Hetzner

Despite the title these scripts can be used with any [Docker](https://www.docker.com/) hosting, but I prefer [Hetzner](https://www.hetzner.com/).

## Build images
To build custom Nginx image run the following commands:
```
cd nginx
docker build -t atlas-nginx .
```
To build custom Postgres image run the following commands:
```
cd postgres
docker build -t atlas-postgres .
```

## Start containers
Edit `docker-compose.yml` to match your email and domain (required to issue SSL-certificate). You may also change the Postres password `some_secret_password` to something more secure :) This will require that you edit the database creation scripts and rebuild postgres image.

To start containers run the following command:
```
docker-compose up -d
```
After startup and initialization is complete you will be able to access your newly created Confluence and JIRA instances at `https://<your domain>/wiki` and `https://<your domain>/jira`
