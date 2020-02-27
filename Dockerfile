FROM python
#Update and install unzip
RUN apt update && apt upgrade -y && apt install -y unzip
#Install pip
RUN pip install --upgrade pip
#Install ansible and paramiko using pip
RUN pip install ansible
RUN pip install paramiko

WORKDIR /opt
#Grab Terraform - Update this line as new releases happen
RUN cd /opt && wget https://releases.hashicorp.com/terraform/0.12.21/terraform_0.12.21_linux_amd64.zip
RUN unzip /opt/terraform_0.12.21_linux_amd64.zip && rm /opt/terraform_0.12.21_linux_amd64.zip

CMD ["bash"]
