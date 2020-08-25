FROM pytorch/pytorch
RUN apt-get update &&
apt-get upgrade -y &&
apt-get install git -y &&
apt-get install vim -y &&
apt-get clean &&
apt-get install -y libsm6 libxext6 libxrender-dev &&
apt-get install python3-pip -y && 
apt-get install unzip -y &&

RUN pip3 install torch 
RUN pip3 install thop
RUN pip3 install jupyter
RUN pip3 install torchsummary
RUN pip3 install opencv-python
RUN pip3 install matplotlib
RUN pip3 install opencv-python
RUN pip3 install imgaug


RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:toor' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile
RUN rm -rf /var/lib/apt/lists/*
  
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]



