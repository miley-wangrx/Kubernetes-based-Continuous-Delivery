[![Flask BMI Microservice Test](https://github.com/miley-wangrx/Kubernetes-based-Continuous-Delivery/actions/workflows/main.yml/badge.svg)](https://github.com/miley-wangrx/Kubernetes-based-Continuous-Delivery/actions/workflows/main.yml)

# Flask BMI Calculator
Small Flask Microservice that calculates one's BMI based on entered height and weight. The microservice was deployed in AWS App Runner, Click [here](https://pmg79xcnbp.us-east-1.awsapprunner.com/) to play with it.  
(Please enter `/bmi/your_height_in_meters/your_weight_in_kilograms` after the url)

## Get Started

* Create virtualenv and source it: `python3 -m venv ~/.fcm && source ~/.venv/bin/fcm`
* Install and Test:  use the command `make all` to install python libraries, lint project, including `Dockerfile` and run tests
* Run it:  `python app.py`
* Invoke it: `curl http://127.0.0.1:8080//bmi/1.75/57`  

## Build and Run Docker Container
* Build the image locally: `docker build -t bmi_calculator:latest` or run `make build`
* Verify the container: `docker image ls`
* Run the project: `docker run -p 8080:8080 bmi_calculator` or run `make run` which has the same command
* Invoke the web service via curl: 
  - open a separate terminal
  - activate the virtual environment `source ~/.venv/bin/fcm`
  - run `curl http://127.0.0.1:8080/bmi/1.75/57` or run `make invoke`

## Push Docker image to Amazon ECR
  <img width="1619" alt="image" src="https://user-images.githubusercontent.com/88390268/164353410-2e422ba1-11ce-4fe3-ab4a-1c4f5bb419f8.png">

## Continuous Integration Using GitHub Actions
<img width="600" alt="image" src="https://user-images.githubusercontent.com/88390268/164355810-d5965805-e275-45b1-bcf3-2486b3c28cd0.png">

<img width="800" alt="image" src="https://user-images.githubusercontent.com/88390268/164356008-f77c6c5f-88c3-4a2c-a471-efb1d90289c6.png">

## Continuous Delivery Using Amazon App Runner
<img width="1813" alt="image" src="https://user-images.githubusercontent.com/88390268/164356423-36e3d9ad-a246-4419-91f5-52782777a0ca.png">


## Loadtest with Locust
I'll finish this part later.

## Ref
Deploy a Kubernetes Python Flask App, [Coursera](https://www.coursera.org/learn/cloud-virtualization-containers-api-duke/supplement/9VQba/deploy-a-kubernetes-python-flask-app)

