FROM python:3.6-apline

RUN apk add --update build-base python-dev py-pip 

RUN pip install --upgrade pip

RUN pip install --user ansible

pip install --user paramiko

CMD ["bash"]
