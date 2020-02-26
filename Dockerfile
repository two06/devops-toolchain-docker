FROM python

RUN apt update && apt upgrade -y && apt install build-base -y

RUN pip install --upgrade pip

RUN pip install --user ansible

RUN pip install --user paramiko

CMD ["bash"]
