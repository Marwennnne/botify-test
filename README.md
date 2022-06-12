## Start Up

This repo is containing theoretical configuration for ssl certificate so to start it up you need to remove this configuration first by :

- uncommenting the configuation in `nginx/nginx.conf` and commenting the rest to use only http protocol
- remove the volume mount in `docker-compose.yml`

then

```sh
docker-compose build
docker-compose up
```
