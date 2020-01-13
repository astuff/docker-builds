FROM ros:dashing-ros-base

RUN apt update -qq && apt install -y -q \
    build-essential \
    cmake \
    apt-transport-https \
    python3-colcon-common-extensions \
    software-properties-common \
    openssh-client \
    gnupg2 \
    && rm -rf /var/lib/apt/lists/*

# Add AS Ubuntu repo
RUN echo "deb [trusted=yes] https://s3.amazonaws.com/autonomoustuff-repo/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/autonomoustuff-public.list

# Install AS Common
RUN apt-get update -qq && apt-get install -y -q \
    libas-common

# Set up environment for libas-common
ENV CPATH "/usr/local/include/external:${CPATH}"

# Update rosdep
RUN rosdep update
