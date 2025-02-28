```
docker build -t hello:v0.1 .
docker tag hello:v2 r8or0pz/hello:v1
docker push r8or0pz/hello:v1
docker run -p 3000:3000 -it --rm r8or0pz/hello:v1
```
