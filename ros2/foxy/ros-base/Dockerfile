FROM ros:foxy-ros-base

RUN apt-get update -qq && apt-get install -y -q \
    apt-transport-https \
    build-essential \
    cmake \
    gnupg2 \
    openssh-client \
    python3-colcon-common-extensions \
    python3-rosdep \
    software-properties-common \
    && rm -rf /var/lib/apt/lists/*

# Add AS Ubuntu repo
RUN echo "deb [trusted=yes] https://s3.amazonaws.com/autonomoustuff-repo/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/autonomoustuff-public.list

# Install AS Common
RUN apt-get update -qq && apt-get install -y -q \
    libas-common \
    && rm -rf /var/lib/apt/lists/*

# Set up environment for libas-common
ENV CPATH "/usr/local/include/external:${CPATH}"

# Add AS rosdep rules
RUN echo "yaml https://s3.amazonaws.com/autonomoustuff-repo/autonomoustuff-public-$ROS_DISTRO.yaml $ROS_DISTRO" > /etc/ros/rosdep/sources.list.d/40-autonomoustuff-public-'$ROS_DISTRO'.list

# Update rosdep
RUN rosdep update
