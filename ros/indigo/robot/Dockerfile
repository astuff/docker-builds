FROM ros:indigo-robot

RUN apt-get update -qq && apt-get install -y -q \
    software-properties-common \
    build-essential \
    cmake \
    apt-transport-https \
    && rm -rf /var/lib/apt/lists/*

# Add gcc repo
RUN add-apt-repository ppa:ubuntu-toolchain-r/test -y

# Add AS Ubuntu repo
udo sh -c 'echo "deb [trusted=yes] https://s3.amazonaws.com/autonomoustuff-repo/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/autonomoustuff-public.list'

# Install GCC-5 and AS Common
RUN apt-get update -qq && apt-get install -y -q \
    gcc-5 \
    g++-5 \
    libas-common

# Set as default
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 1 --slave /usr/bin/g++ g++ /usr/bin/g++-5
