# gh-pages

http://sam-alpha-institutes.github.io/gh-pages/

## Docker support

Run the [Data Volume Container](http://docs.docker.com/userguide/dockervolumes/) 
to expose data volume `/usr/local/nginx/html`:
```sh
docker run --name gh-pages -d ontouchstart/gh-pages bash
```

Then mount data volume `/usr/local/nginx/html` to a nginx container:
```sh
docker run --rm -p 80:80 --volumes-from gh-pages -it nginx
```
