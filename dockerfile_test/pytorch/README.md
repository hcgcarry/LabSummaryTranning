run program:
docker pull pytorch/pytorch
docker build -t test .
docker run -it --name test1 test
cd home
python lab2macs.py
