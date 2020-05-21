# Operationalize-a-Machine-Learning-Microservice-API
![CircleCI](https://circleci.com/gh/bijayshrestha01/Operationalize-a-Machine-Learning-Microservice-API.svg?style=svg)
## Summary
In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. You are given a pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. 

## Project Tasks
Your project goal is to operationalize this working, machine learning microservice using kubernetes, which is an open-source system for automating the management of containerized applications. In this project you will:

* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

## Instructions
Set up the environment for the project
```
git clone https://github.com/udacity/DevOps_Microservices.git
cd DevOps_Microservices/project-ml-microservice-kubernetes
```
Install libraries
```
brew install hadolint
brew cask install virtualbox
brew cask install minikube
```
To run an deploy application in docker
```
./run_docker.sh
./upload_docker.sh
```
Deploy application in kubernetes
```
./run_kubernetes.sh
```
After you’ve called run_dokcer.sh & run_kubernetes.sh each time, and a pod is up and running, make a prediction using a separate terminal tab and run
```
./make_prediction.sh
```
To generate the ouput
```
After you run ./make_prediction.sh in the separate tab 
go back to the tab where you ran ./run_docker.sh and ./run_kubernetes.sh
each time and copy and paste the ouput to docker_out.txt and kubernetes_out.txt respectively
```
Delete the cluster
```
minikube delete
```

*** Files Included***
```
config.yml: CircleCI configuration file for running the tests
app.py: Python flask app that serves out predictions (inference) about housing prices through API calls
Dockerfile: Dockerfile for building the image
make_prediction.sh: Send a request to the Python flask app to get a prediction for docker and kubernetes
Makefile: includes instructions on environment setup and lint tests
model_data folder: housing data

run_docker.sh: file to be able to get Docker running, locally
run_kubernetes.sh: file to run the app in kubernetes
upload_docker.sh: file to upload the image to docker
Readme.md: this file
output_txt_files folder: contains output txt files from docker and kubernetes predictions

```

