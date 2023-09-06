#https://learn.microsoft.com/en-us/dotnet/core/docker/build-container?view=vs-2022&tabs=windows#create-net-app

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

# To create the docker image
# docker build --rm -t myapp .

# To run just execute: 
# add the --rm to remove the container automatically
# docker run -d myapp Adri