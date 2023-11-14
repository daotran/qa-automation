# Postman API Testing
# Hello Newman - How to Build a CI/CD Pipeline that Executes API Tests
# https://dev.to/leading-edje/hello-newman-how-to-build-a-ci-cd-pipeline-that-executes-api-tests-2h5l
# Open Source: https://gitlab.com/explore

## Start the web-app

```bash
docker-compose --profile default up --build # press Ctrl+C to stop
```

## Run the tests

```bash
docker-compose --profile test up --build
```
