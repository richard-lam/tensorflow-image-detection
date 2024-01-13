FROM redhat/ubi8

ENV DISPLAY :0
RUN mkdir /tensorflow-image-detection
COPY tensorflow-image-detection /tensorflow-image-detection/
RUN dnf install -y dos2unix gcc-c++ python3 python3-devel python3-pip python3-tkinter vim openssh-server
RUN pip3 install numpy six tensorflow