## Start Up

This repo is containing theoretical configuration for ssl certificate so to start it up you need to remove this configuration first by :

- uncommenting the configuation in `nginx/nginx.conf` and commenting the rest to use only http protocol
- remove the volume mount in `docker-compose.yml`

then

```sh
docker-compose build
docker-compose up
```

## Potential improvements:

Which points would you improve on the security aspects?

- add WAF capabilities to our proxy to the best possible level of protection
- use official images and packages

If we ever add a database to stock users’ results, how do you plan to backup the application?

- Edit the crontab and create a cron job to create compressed dump and store it in S3 bucket

How do you plan to update the application with a minimal downtime?

- Launch a new container and then update nginx.conf to point the proxy to the new container

How would you scale this application so it can serve a high number of requests?

- Add a load balancer in front of multiple instance running the flask app
- If we are using k8s, We deploy the metrics-server and HorizontalPodScaler with our Flask app deployment

## Open suggestions:

What else would you like to improve before pushing this application to production?

- Automate as much as possible (CI-CD pipelines)
- make use of docker caching by setting up the dockerfile in an optimal way to build images faster
- create a staging environnement to test on it before pushing to production
