FROM autonomoustuff/docker-builds:melodic-ros-base

SHELL ["/bin/bash", "-c"]

# Install dependencies
RUN apt-get -y update && \
    apt-get -y install python3-dev virtualenvwrapper virtualenv unzip zip wget iproute2 ros-melodic-tf2-ros ros-melodic-tf2-geometry-msgs

# Create catkin workspace
RUN mkdir -p ~/catkin_ws/src && \
    cd ~/catkin_ws && \
    source /opt/ros/*/setup.bash && \
    catkin init && \
    catkin build

# Create python3 virtualenv and install dependencies inside it
RUN cd && \
    source /usr/share/virtualenvwrapper/virtualenvwrapper.sh && \
    mkvirtualenv -p /usr/bin/python3 smartmicro && \
    pip install rospkg catkin_pkg crcmod crc16

# Download smartmicro driver and edit to use virtualenv
RUN cd /tmp && \
    wget https://www.smartmicro.com/fileadmin/media/Downloads/Automotive_Radar/Software/umrr_driver.tar.xz.zip && \
    unzip umrr_driver.tar.xz.zip && \
    tar -xzf umrr_driver-customer_version.tar.gz && \
    zip -r -ll umrr_linux_line_endings.zip umrr_driver && \
    rm -rf umrr_driver && \
    unzip umrr_linux_line_endings.zip && \
    export VIRTUALENV_PYTHON='#!/root/.virtualenvs/smartmicro/bin/python' && \
    sed -i '1s|.*|'$VIRTUALENV_PYTHON'|' umrr_driver/scripts/umrr_can_publisher.py && \
    cp -r umrr_driver ~/catkin_ws/src/

RUN cd ~/catkin_ws && \
    catkin build
