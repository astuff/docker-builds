FROM autonomoustuff/docker-builds:kinetic-perception

RUN apt update -qq && apt install -y wget

# Add CUDA Repo
RUN apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
RUN echo "deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64 /" > /etc/apt/sources.list.d/cuda.list

# Add OpenCV 3.4 repo
RUN add-apt-repository -y ppa:timsc/opencv-3.4

# Install both
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y cuda libopencv-dev
