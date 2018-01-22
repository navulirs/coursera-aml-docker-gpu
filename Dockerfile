#FROM ubuntu:16.04
FROM nvidia/cuda:8.0-devel-ubuntu16.04
ARG DEBIAN_FRONTEND=noninteractive

# install apt packages
RUN apt-get update
RUN apt-get install -yq python3-pip htop nano git wget libglib2.0-0 ffmpeg

# install python modules
ADD requirements.txt /
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
RUN pip3 install --upgrade six
# setup juptyer
RUN jupyter nbextension enable --py --sys-prefix widgetsnbextension
RUN jupyter contrib nbextension install --user
RUN jupyter nbextension enable codefolding/main
RUN echo "c.NotebookApp.ip = '*'" >> /root/.jupyter/jupyter_notebook_config.py
RUN echo "c.NotebookApp.port = 8080" >> /root/.jupyter/jupyter_notebook_config.py
RUN echo "c.NotebookApp.token = ''" >> /root/.jupyter/jupyter_notebook_config.py

WORKDIR /root
EXPOSE 8080
CMD ["jupyter", "notebook", "--no-browser", "--allow-root"]
