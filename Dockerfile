FROM mcr.microsoft.com/dotnet/core/aspnet:3.1.1-buster-slim AS runtime

RUN apt-get update \
    && apt-get install -y \
    apt-transport-https \    
    wget \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
    
RUN wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
    && rm packages-microsoft-prod.deb

RUN apt-get update \
    && apt-get install -y \
    aspnetcore-runtime-2.2 \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
