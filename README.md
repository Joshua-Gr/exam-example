The goal of this exercise is to wrap a small web service with redis db
& prometheus and deploy it using docker and docker-compose.

You're provided with:

1. `api.py` - The Python app as one python file.

2. `pyproject.toml` - The dependencies for the service (using Poetry).

3. `test.sh` - a set of simple tests to validate that the service built
   correctly.

What you need to do:

1. Create a dockerfile to build the service. The dockerfile should be written
   using best practices.

2. Create a docker-compose file to bring up the service together with
  Redis and Prometheus.

3. Redis should be configured to save the data **on every change** to an
   attached storage (in our case, a directory mounted into the container).

4. Redis should be configured with ACLs, user and password and
   **with the default password disabled**.

5. Pass those credentials to the app service.

6. The Prometheus service should be configured to get the metrics from the app.

7. All of the services should be configured with health checks.

8. Also, since the app does not have a health check currently, please write
   a healthcheck route under `/healthcheck` that will return `{"status": "ok"}`
   whenever it is called.

9. All of the services should be monitored by their aforementioned healthcheck
   by docker.
