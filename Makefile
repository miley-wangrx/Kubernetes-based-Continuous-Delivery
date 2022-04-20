install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	docker run --rm -i hadolint/hadolint < Dockerfile
	pylint --disable=R,C,W1203,W0702 app.py

test:
	python -m pytest -vv --cov=app test_app.py

build:
	docker build -t bmi_calculator:latest .

run:
	docker run -p 8080:8080 bmi_calculator:latest

invoke:
	curl http://127.0.0.1:8080/bmi/1.75/57

run-kube:
	kubectl apply -f kube-hello-change.yaml

all: install lint test