# AutonomouStuff CI Docker Images #

This repo contains Dockerfiles for use in automated builds on the [AutonomouStuff dockerhub](https://hub.docker.com/r/autonomoustuff/docker-builds/).
It contains at least the following images (listed by docker tag name)

- ARM (arm-gnueabi-none) Cross-compilation Environment in Ubuntu 16.04
- ROS Kinetic on Ubuntu 16.04
  - [kinetic-ros-base](https://github.com/astuff/docker-builds/blob/master/ros/kinetic/ros-base/Dockerfile)
  - [kinetic-robot](https://github.com/astuff/docker-builds/blob/master/ros/kinetic/robot/Dockerfile)
  - [kinetic-perception](https://github.com/astuff/docker-builds/blob/master/ros/kinetic/perception/Dockerfile)
  - [kinetic-perception-opencv-cuda](https://github.com/astuff/docker-builds/blob/master/ros/kinetic/perception-opencv-cuda/Dockerfile)
- ROS Melodic on Ubuntu 18.04
  - [melodic-ros-base](https://github.com/astuff/docker-builds/blob/master/ros/melodic/ros-base/Dockerfile)
  - [melodic-robot](https://github.com/astuff/docker-builds/blob/master/ros/melodic/robot/Dockerfile)
  - [melodic-perception](https://github.com/astuff/docker-builds/blob/master/ros/melodic/perception/Dockerfile)
  - [melodic-perception-opencv-cuda](https://github.com/astuff/docker-builds/blob/master/ros/melodic/perception-opencv-cuda/Dockerfile)
- ROS Noetic on Ubuntu 20.04
  - [noetic-ros-base](https://github.com/astuff/docker-builds/blob/master/ros/noetic/ros-base/Dockerfile)
  - [noetic-robot](https://github.com/astuff/docker-builds/blob/master/ros/noetic/robot/Dockerfile)
  - [noetic-perception](https://github.com/astuff/docker-builds/blob/master/ros/noetic/perception/Dockerfile)
  - [noetic-perception-opencv-cuda](https://github.com/astuff/docker-builds/blob/master/ros/noetic/perception-opencv-cuda/Dockerfile)
- ROS2 Bouncy on Ubuntu 18.04
  - [bouncy-ros-core](https://github.com/astuff/docker-builds/blob/master/ros2/bouncy/ros-core/Dockerfile)
  - [bouncy-ros-base](https://github.com/astuff/docker-builds/blob/master/ros2/bouncy/ros-base/Dockerfile)
- ROS2 Crystal on Ubuntu 18.04
  - [crystal-ros-core](https://github.com/astuff/docker-builds/blob/master/ros2/crystal/ros-core/Dockerfile)
  - [crystal-ros-base](https://github.com/astuff/docker-builds/blob/master/ros2/crystal/ros-base/Dockerfile)
- ROS2 Dashing on Ubuntu 18.04
  - [dashing-ros-core](https://github.com/astuff/docker-builds/blob/master/ros2/dashing/ros-core/Dockerfile)
  - [dashing-ros-base](https://github.com/astuff/docker-builds/blob/master/ros2/dashing/ros-base/Dockerfile)
- Ubuntu images for CI testing purposes
  - [xenial-non-root](https://github.com/astuff/docker-builds/blob/master/ubuntu/xenial-non-root/Dockerfile)
  - [bionic-non-root](https://github.com/astuff/docker-builds/blob/master/ubuntu/bionic-non-root/Dockerfile)
  - [focal-non-root](https://github.com/astuff/docker-builds/blob/master/ubuntu/focal-non-root/Dockerfile)

For definitions of the above ROS metapackages, see [REP-142](http://www.ros.org/reps/rep-0142.html).

For definitions of the above ROS2 metapackages, see [REP-150](http://www.ros.org/reps/rep-0150.html).
