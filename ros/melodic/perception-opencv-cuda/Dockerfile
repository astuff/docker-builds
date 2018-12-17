FROM autonomoustuff/docker-builds:melodic-perception

RUN apt update -qq && apt install -y wget unzip

# Add CUDA Repo
RUN apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub && \
    echo "deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64 /" > /etc/apt/sources.list.d/cuda.list

# Install CUDA
RUN apt update -qq && DEBIAN_FRONTEND=noninteractive apt install -y cuda

# Build and Install OpenCV 3.4.4
RUN wget https://github.com/opencv/opencv/archive/3.4.4.zip && \
    unzip 3.4.4.zip && \
    cd opencv-3.4.4 && \
    mkdir build && cd build && \
    cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local \
          -D WITH_TBB=ON -D WITH_V4L=ON -D WITH_QT=ON -D WITH_OPENGL=ON \
          -D WITHCUDA=ON -D ENABLE_CXX11=1 .. && \
    make -j4 && \
    make install
