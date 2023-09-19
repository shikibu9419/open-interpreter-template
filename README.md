# Open Interpreter Template

## Build
```shell
docker build -t open-interpreter:default
```

## Interpreter
```shell
docker run -it --rm --env-file .env -v $(pwd):/root/project open-interpreter:default interpreter -y -s rule.md
```
