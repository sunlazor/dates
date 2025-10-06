### COMMANDS

#### RUN

```
docker buildx build -t dates:0.1.0 .
```

```
docker run --name dates --rm -p 9001:8080 --volume ${PWD}:/app dates:0.1.0
```

#### composer

```
docker run --rm --interactive --tty --volume $PWD:/app --user $(id -u):$(id -g) composer:lts composer req <package_here>
```
