FROM python
#Update and install unzip
RUN apt update && apt upgrade -y && apt install -y unzip
#Install pip
RUN pip install --upgrade pip
#Install ansible and paramiko using pip
RUN pip install ansible
RUN pip install paramiko

WORKDIR /usr/local/bin
#Grab Terraform - Update this line as new releases happen
RUN cd /tmp && wget https://releases.hashicorp.com/terraform/0.12.21/terraform_0.12.21_linux_amd64.zip
#unzip into /usr/local/bin (the WORKDIR) and cleanup 
RUN unzip /tmp/terraform_0.12.21_linux_amd64.zip && rm /tmp/terraform_0.12.21_linux_amd64.zip

CMD ["bash"]
