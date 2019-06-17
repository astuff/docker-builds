FROM ros:dashing-ros-core

RUN apt update -qq && apt install -y -q \
    build-essential \
    cmake \
    apt-transport-https \
    python3-colcon-common-extensions \
    software-properties-common \
    && rm -rf /var/lib/apt/lists/*

# Update rosdep
RUN rosdep update
