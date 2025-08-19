# 🐳 Docker Cheatsheet

## View all containders
```powershell
docker ps
docker ps -a
```
## Run a container
```powershell
docker run -d -p 8088:80 --name welcome-to-docker docker/welcome-to-docker
```

