[![Flask Change Microservice Test](https://github.com/miley-wangrx/Kubernetes-based-Continuous-Delivery/actions/workflows/main.yml/badge.svg)](https://github.com/miley-wangrx/Kubernetes-based-Continuous-Delivery/actions/workflows/main.yml)

# Flask BMI Calculator
Small Flask Microservice that calculates one's BMI based on entered height and weight

## Get Started

* Create virtualenv and source it: `python3 -m venv ~/.fcm && source ~/.venv/bin/fcm`
* Install and Test:  use the command `make all` to install python libraries, lint project, including `Dockerfile` and run tests
* Run it:  `python app.py`
* Invoke it: `curl http://127.0.0.1:8080/change/1/34`  

## Build and Run Docker Container
* Build the image locally: `docker build -t bmi_calculator:latest` or run `make build`
* Verify the container: `docker image ls`
* Run the project: `docker run -p 8080:8080 bmi_calculator` or run `make run` which has the same command
* Invoke the web service via curl: 
  - open a separate terminal
  - activate the virtual environment `source ~/.venv/bin/fcm`
  - run `curl http://127.0.0.1:8080/bmi/1.75/57` or run `make invoke`

## Implementation

## Loadtest with Locust

* [Install Locust](https://github.com/locustio/locust)
* Create a `locustfile.py`
* Run loadtests
![Screen Shot 2021-03-16 at 3 02 59 PM](https://user-images.githubusercontent.com/58792/111367175-d7328600-866a-11eb-9a4d-3429710593ea.png)
![Screen Shot 2021-03-16 at 3 02 35 PM](https://user-images.githubusercontent.com/58792/111367176-d7328600-866a-11eb-9856-928d42e65a9a.png)
![Screen Shot 2021-03-16 at 3 01 22 PM](https://user-images.githubusercontent.com/58792/111367178-d7cb1c80-866a-11eb-8c29-6440a6179544.png)

