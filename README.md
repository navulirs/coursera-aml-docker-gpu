# coursera-aml-docker-gpu

This project modified the original Dockerfile from https://github.com/ZEMUSHKA/coursera-aml-docker to make it compatible to tensorflow-gpu

Build:

sudo nvidia-docker build . --tag coursera-aml-gpu

Test: TBD

Run: 

sudo nvidia-docker run -dit -p 8080:8080 --name coursera-aml coursera-aml-gpu

Todo:
Add Tensorboard




