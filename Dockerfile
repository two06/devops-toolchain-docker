FROM python

RUN apt update && apt upgrade -y

RUN pip install --upgrade pip

RUN pip install ansible

RUN pip install paramiko

CMD ["bash"]
