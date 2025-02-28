<h1 align="center">Fiber Hello World test App</h1>

<h3 align="left">Languages and Tools:</h3>
<p align="left">
    <a href="https://golang.org" target="_blank" rel="noreferrer">
        <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/go/go-original.svg" alt="go" width="40" height="40"/>
    </a>
    <a href="https://kubernetes.io" target="_blank" rel="noreferrer">
        <img src="https://www.vectorlogo.zone/logos/kubernetes/kubernetes-icon.svg" alt="kubernetes" width="40" height="40"/>
    </a>
</p>

```
docker build -t hello:v0.1 .
docker tag hello:v2 r8or0pz/hello:v1
docker push r8or0pz/hello:v1
docker run -p 3000:3000 -it --rm r8or0pz/hello:v1

cd helm/
helm install fiber-hello hello/ --values hello/values.yaml
```
