# alpine-mysql

Although there are docker images out there for mysql, I prefer to use my own. This dockerfile builds a basic mysql setup. I keep it here to use
as a template and update it with other additions as the project may require. 

## build image
```
docker build -t jnvilo/alpine-mysql .

## Usage
```
docker run -it -p 3306:3306 -v $(pwd):/app -e DATABASE=admin -e USER=jnvilo -e MYSQL_PASSWORD=2s0301d8 -e MYSQL_ROOT_PASSWORD=password jnvilo/alpine-mysql
```

