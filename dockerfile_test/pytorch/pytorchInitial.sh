apt-get update &&
apt-get upgrade -y &&
apt-get install git -y &&
apt-get install vim -y &&
apt-get clean &&
apt-get install -y libsm6 libxext6 libxrender-dev &&
apt-get install python3-pip -y && 
apt-get install unzip -y &&

pip install thop
pip install jupyter
pip install torchsummary
pip install opencv-python
pip install matplotlib
pip install opencv-python
pip3 install imgaug


apt-get install -y openssh-server
mkdir /var/run/sshd
echo 'root:toor' | chpasswd
sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
# SSH login fix. Otherwise user is kicked off after login
sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
ENV NOTVISIBLE "in users profile"
echo "export VISIBLE=now" >> /etc/profile
rm -rf /var/lib/apt/lists/*
  



