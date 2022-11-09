FROM debian:slim

RUN apt-get update && \
apt-get -y install python3 python3-pip python3-venv && \
pip3 install pip --upgrade && pip3 install jupyterlab

ENV PATH=${HOME}/.local/bin:${PATH}

EXPOSE 8888

CMD ["jupyter-lab"]
