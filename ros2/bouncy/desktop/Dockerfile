FROM osrf/ros2:bouncy-desktop

RUN apt update -qq && apt install -y -q \
    build-essential \
    cmake \
    apt-transport-https \
    python-rosdep \
    python3-colcon-common-extensions \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Update rosdep
RUN rosdep update
