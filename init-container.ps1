# init-container.ps1
# Script para inicializar el contenedor "welcome-to-docker"

# Nombre del contenedor
$containerName = "welcome-to-docker"

# Verifica si el contenedor ya existe
$exists = docker ps -a --filter "name=$containerName" --format "{{.Names}}"

if ($exists -eq $containerName) {
    Write-Host "El contenedor '$containerName' ya existe. Eliminándolo..."
    docker rm -f $containerName
}

# Ejecuta el contenedor
Write-Host "Inicializando contenedor '$containerName'..."
docker run -d -p 8088:80 --name $containerName docker/welcome-to-docker

# Muestra estado
docker ps --filter "name=$containerName"

# Para ejecutar
.\init-container.ps1
