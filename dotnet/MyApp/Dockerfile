#https://learn.microsoft.com/en-us/dotnet/core/docker/build-container?view=vs-2022&tabs=windows#create-net-app
# Tutorial: Containerize a .NET app
# Create .NET app
# Create the Dockerfile

FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build-env
WORKDIR /MyApp

# Copy csproj and restore as distinct layers
COPY *.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY . ./
RUN dotnet publish -c Release -o out

# Build runtime image
FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /app
COPY --from=build-env /MyApp/out .
ENTRYPOINT ["dotnet","MyApp.dll"]
# docker build -t myapp -f Dockerfile .
# docker images
# docker create --name App myapp
#docker start App

# To create the docker image
# docker build --rm -t myapp .

# To run just execute: 
# add the --rm to remove the container automatically
# docker run -d myapp Adri
