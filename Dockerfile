FROM python
#Update and install unzip
RUN apt update && apt upgrade -y && apt install -y unzip
#Install pip
RUN pip install --upgrade pip
#Install ansible and paramiko using pip
RUN pip install ansible
RUN pip install paramiko

CMD ["bash"]
