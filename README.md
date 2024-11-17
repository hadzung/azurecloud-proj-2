# Overview

<TODO: complete this with an overview of your project>

## Project Plan

* Trello board for the project: https://trello.com/b/aH0N3jnl/udacityproject2
* Spreadsheet: https://docs.google.com/spreadsheets/d/1dFAw-lYMBx92EwwMtnPG596USrdmiWOqXttB840b6u8/edit?gid=1348135932#gid=1348135932>

## Instructions

Azure Cloudshell:

![Azure Cloud Shell](https://github.com/hadzung/azurecloud-proj-2/blob/main/screenshots/azcloudshell.png)

Azure CI:

![Azure CI](https://github.com/hadzung/azurecloud-proj-2/blob/main/screenshots/ci.png)

Azure CD:

![Azure CD](https://github.com/hadzung/azurecloud-proj-2/blob/main/screenshots/cd.png)



Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:
#Deployment Guide
##Setup Azure Cloudshell
### Generate sshkey and add to github account



### Clone source code
```
odl_user [ ~/demo ]$ git clone git@github.com:hadzung/azurecloud-proj-2.git
Cloning into 'azurecloud-proj-2'...
remote: Enumerating objects: 206, done.
remote: Counting objects: 100% (19/19), done.
remote: Compressing objects: 100% (14/14), done.
remote: Total 206 (delta 12), reused 10 (delta 5), pack-reused 187 (from 1)
Receiving objects: 100% (206/206), 261.68 KiB | 470.00 KiB/s, done.
Resolving deltas: 100% (95/95), done.
```

![Clone Code](https://github.com/hadzung/azurecloud-proj-2/blob/main/screenshots/cloudshell_clone_code.png)


### Run application locally (optional)
```
  python3 -m venv ~/.myvenv
  source ~/.myvenv/bin/activate
  make install
  python -m flask run
```

### Create a web app service

```
az webapp up --name udacity-azure-project2 --resource-group Azuredevops --sku B1 --logs --runtime "PYTHON:3.10"
```

### View Live Log stream
```
az webapp log tail --name udacity-azure-project2 --resource-group Azuredevops
```

![dockerLog](https://github.com/hadzung/azurecloud-proj-2/blob/main/screenshots/logstream.png)

![Log Stream](https://github.com/hadzung/azurecloud-proj-2/blob/main/screenshots/live_log_stream.png)

### Verify on browser




### Perform Prediction




* Project cloned into Azure Cloud Shell

* Passing tests that are displayed after running the `make all` command from the `Makefile`

* Output of a test run

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

* Running Azure App Service from Azure Pipelines automatic deployment

* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:

```bash
udacity@Azure:~$ ./make_predict_azure_app.sh
Port: 443
{"prediction":[20.35373177134412]}
```

* Output of streamed log files from deployed application

## Enhancements

<TODO: 
Some update that we can improve:
1. Create git flow, branching and merging strategy so we can manage our source code and version better
2. Create notification to related stakeholder after finish deployment
>

## Demo 

<TODO: Demo on Youtube: https://www.youtube.com/watch?v=04C5GL4G84Q>


