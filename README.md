# GitLab-CI-CD-Docker-Node.JS


#### Runner settings:
 - executor = "docker"
 
#### Gitlab CI/CD Variables
To run container with your project docker-compose.yml uses variables from .env, add these lines to your variables (.env)
```
### DOCKER ENV ###
CONTAINER_NAME = app_name
CONTAINER_PORT = 3001
...
%your env strings%
### DOCKER ENV ###
```
> If you don't want to use a web server(nginx,apache) you can run the container on port 80


- ENV_DEV -  type: File 
> Paste your .env for **develop** and add strings for docker
- ENV_PROD - type: File
> Paste your .env for **production** and add strings for docker


#### Deploy to DEVELOP VPS
- Deploy from - branch develop
- Runner with tag - develop

#### Deploy to PRODUCTION VPS
- Runner with tag - production
- Deploy from - tag v.X.X.Xnn

###### Examples tags
- v.1.0.1
- v.1.0.1test

#### Deploy to develop or create tag
![image](https://user-images.githubusercontent.com/32634559/204368983-1f9ae39d-b008-49c8-bd43-b35e83fa7b63.png)

#### Deploy to other branch
![image](https://user-images.githubusercontent.com/32634559/204371127-600db8e4-b1d7-4bbb-9543-88e8e6cfee72.png)


##### Future plans:
- Optimize Stages
- Upload files that are needed only to start the project
- Running a project in a container for local development
- ...
