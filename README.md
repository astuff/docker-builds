# AutonomouStuff CI Docker Images #

This repo contains Dockerfiles for use in automated builds on [https://hub.docker.com/r/autonomoustuff/docker-builds/](https://hub.docker.com/r/autonomoustuff/docker-builds/). It contains at least the following:

- ARM (arm-gnueabi-none) Cross-compilation Environment in Ubuntu 16.04
- ROS Kinetic on Ubuntu 16.04
  - ros-base
  - robot
  - perception
- ROS Melodic on Ubuntu 18.04
  - ros-base
  - robot
  - perception
- ROS2 Bouncy on Ubuntu 18.04
  - ros-core
  - ros-base
- ROS2 Crystal on Ubuntu 18.04
  - ros-core
  - ros-base
- ROS2 Dashing on Ubuntu 18.04
  - ros-core
  - ros-base
- Ubuntu images for CI testing purposes
  - [xenial-non-root](https://github.com/astuff/docker-builds/blob/master/ubuntu/xenial-non-root/Dockerfile)
  - [bionic-non-root](https://github.com/astuff/docker-builds/blob/master/ubuntu/bionic-non-root/Dockerfile)

For definitions of the above ROS metapackages, see [REP-142](http://www.ros.org/reps/rep-0142.html).

For definitions of the above ROS2 metapackages, see [REP-150](http://www.ros.org/reps/rep-0150.html).
