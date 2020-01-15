# DOTNETCORE-deploy

## Why?

The last official runtime always contains lots of vulnerabilities and bugs fixes (framework and SO) and, obiviously, the last runtime avaiable, but it doesn't contains previous dotnetcore runtimes.

## My solution

Create a docker image based on the last slim avaiable, that I will check from times to times, and add aspnetcore runtime 2.2 onwards.

Which means that when 4.x will be avaiable, I will update the last 4.x with 2.2 and 3.1 and so on.

So, use the lastest tag from the docker, that you will have most recent version with backwards compatibility.

## It worth it?

Yes, so far the vulnebarilities scans on this image droped from 84 (8 criticals) from 2.2.1 slim to 22 (1 critical) from 3.1 slim.

## Using:

```
FROM dotnetcore edgarrc/dotnetcore-deploy:latest as runtime
```

## Last update

### 2019 jan 01

```
# dotnet --list-runtimes
Microsoft.AspNetCore.All 2.2.8 [/usr/share/dotnet/shared/Microsoft.AspNetCore.All]
Microsoft.AspNetCore.App 2.2.8 [/usr/share/dotnet/shared/Microsoft.AspNetCore.App]
Microsoft.AspNetCore.App 3.1.1 [/usr/share/dotnet/shared/Microsoft.AspNetCore.App]
Microsoft.NETCore.App 2.2.8 [/usr/share/dotnet/shared/Microsoft.NETCore.App]
Microsoft.NETCore.App 3.1.1 [/usr/share/dotnet/shared/Microsoft.NETCore.App]
```

