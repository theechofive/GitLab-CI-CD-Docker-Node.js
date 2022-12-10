# GitLab-CI-CD-Docker-Node.JS

GitLab CI/CD template with GitLab-Runner to deploy a project in a docker container on a VPS.


For example, the deployment was made to two VPS, one for development, the second for production.


Add files from this repository to your project root directory

Example for NestJS
```
|_src
  |_application
    |_...
  |_common
    |_...
  |_database
    |_...
  |_main.ts
|_templates
  |_...
|_package.json
|_.env
|_docker-compose.yml
|_.gitlab-ci.yml
|_Dockerfile
```

#### Gitlab CI/CD Variables
To run container with your project docker-compose.yml uses variables from .env, add these lines to your variables (.env)
```
### DOCKER ENV ###
CONTAINER_NAME = app_name
CONTAINER_PORT = 3001
### DOCKER ENV ###
%your env strings%
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
- v.1.0.11
- v.1.0.111

### Settings
#### Install stage
...
#### Test Stage
...
#### Build Stage
...
#### Deploy Stages
...
#### Runner settings
 - executor = "docker"
 - defaul image = ...

#### Deploy to develop or create tag
![image](https://user-images.githubusercontent.com/32634559/204368983-1f9ae39d-b008-49c8-bd43-b35e83fa7b63.png)

#### Deploy to other branch
![image](https://user-images.githubusercontent.com/32634559/204371127-600db8e4-b1d7-4bbb-9543-88e8e6cfee72.png)


##### Future plans:
- Optimize Stages
- Upload files that are needed only to start the project
- Running a project in a container for local development
- ...
