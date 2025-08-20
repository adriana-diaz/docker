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
## View all images
```powershell
docker images
```
## Download a specific image from docker.hub
```powershell
docker pull [image]
```
# 🐳 Editing an HTML Page Inside a Docker Container

## Steps
1. **Access the container shell**
   ```powershell
   docker exec -it welcome-to-docker sh
   ```
2. **Navigate to the HTML directory**
    ```powershell
   cd /usr/share/nginx/html
   ```
3. **list files**
   ```powershell
   ls
   ```
4. **Create or edit your page**
   ```powershell
   vi mipagina.html
   ```
5. **insert code to change the html page**
```powershell
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bienvenido a Docker</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 50px;
        }
        h1 {
            color: #0077b6;
        }
        p {
            font-size: 18px;
        }
    </style>
</head>
<body>
    <h1>🚀 ¡Hola desde Docker!</h1>
    <p>Esta es mi primera página HTML5 corriendo dentro de un contenedor Docker.</p>
</body>
</html>
```
6.  **Press ESC to exit insert mode**
7.  **Save and exit**
   ```powershell
:wq
```
8. **Test your page in the browser**
9. **Write exit to exit the container**   

## Name a container
```powershell
docker run --name [new_name] [image_name]
```
## Filter container
by status
```powershell
docker container ls --filter "status=exited"
```
by name
```powershell
docker container ls --filter "name=welcome"
```
by image
```powershell
docker container ls --filter "ancestor=docker/welcome-to-docker"
```
<img width="1831" height="170" alt="image" src="https://github.com/user-attachments/assets/46ae8d3d-92bb-423f-a9de-a47a3d4c84a4" />
