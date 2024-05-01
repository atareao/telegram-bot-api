user    := "atareao"
name    := `basename ${PWD}`
version := `git tag -l  | tail -n1`

build:
    docker build -t {{user}}/{{name}}:{{version}} .
tag:
    docker tag {{user}}/{{name}}:{{version}} {{user}}/{{name}}:latest
push:
    docker push {{user}}/{{name}} --all-tags

