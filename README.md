## Docker Nginx CORS proxy pass using docker-compose

A containerized Nginx instance acting as a reverse proxy to a backend, to overcome issues related to Cross-Origin Resource Sharing (CORS) during local development.

## Issue

While developing a frontend system, accessing an API using tools like cURL or Postman works well. However, accessing the same API from web browsers like Chrome or Firefox can lead to CORS-related errors. CORS, a browser security feature, governs how resources from different domains are accessed. If the resource server doesn't allow access from another domain, browsers display errors like:
"Access to XMLHttpRequest at 'domain' from origin 'other domain' has been blocked by CORS policy: Response to preflight request doesn't pass access control check: No 'Access-Control-Allow-Origin' header is present on the requested resource."

## Resolution

The conventional solution involves enabling CORS directly within your application's codebase. 
However, this process can be complex and time-consuming, involving manual code changes and navigating through the pipeline.

Alternatively, deploying a Nginx server as a reverse proxy using a Docker container offers a simpler solution. Follow the next steps to implement it.

## Usage

### 1) Edit the params in the .env file like you prefer:

```dotenv
BACKEND_URL="<YOUR_BACKEND_HOST>:<YOUR_BACKEND_PORT>"
NGINX_PROXY_PORT="<NGINX_PROXY_PORT>"
```

### 2) Start Nginx cors proxy:

```bash
./manage-nginx-cors-proxy.sh start
```

### 3) Stop Nginx cors proxy:

```bash
./manage-nginx-cors-proxy.sh stop
```

## References

- https://gist.github.com/iki/1247cd182acd1aa3ee4876acb7263def
- https://gist.github.com/Stanback/7145487
- https://github.com/maximillianfx/docker-nginx-cors