# Changes #

## Frontend, Dockerfile ##

```
ENV REACT_APP_BACKEND_URL=http://localhost:8080
```

to

```
ENV REACT_APP_BACKEND_URL=http://localhost/api
```

## Backend, Dockerfile ##

```
ENV REQUEST_ORIGIN=http://localhost:5000
```

to

```
ENV REQUEST_ORIGIN=http://localhost
```
