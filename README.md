# AutonomouStuff CI Docker Images #

This repo contains Dockerfiles for use in automated builds on [https://hub.docker.com/r/autonomoustuff/docker-builds/](https://hub.docker.com/r/autonomoustuff/docker-builds/).
It contains at least the following (listed by image tag):

# ROS Images

The base ROS images with AutonomouStuff-related sources/dependencies installed.

#### ROS Kinetic on Ubuntu 16.04
- `kinetic-ros-base`
- `kinetic-robot`
- `kinetic-perception`

#### ROS Melodic on Ubuntu 18.04
- `melodic-ros-base`
- `melodic-robot`
- `melodic-perception`
- `melodic-perception-opencv-cuda`

#### ROS Noetic on Ubuntu 20.04
- `noetic-ros-base`
- `noetic-robot`
- `noetic-perception`
- `noetic-perception-opencv-cuda`

For definitions of the above ROS metapackages, see [REP-142](http://www.ros.org/reps/rep-0142.html).

# ROS2 Images

The base ROS2 images with AutonomouStuff-related sources/dependencies installed.

#### ROS2 Bouncy on Ubuntu 18.04
- `bouncy-ros-core`
- `bouncy-ros-base`

#### ROS2 Crystal on Ubuntu 18.04
- `crystal-ros-core`
- `crystal-ros-base`

#### ROS2 Dashing on Ubuntu 18.04
- `dashing-ros-core`
- `dashing-ros-base`

#### ROS2 Foxy on Ubuntu 20.04
- `foxy-ros-core`
- `foxy-ros-base`

#### ROS2 Humble on Ubuntu 22.04
- `humble-ros-core`
- `humble-ros-base`

For definitions of the above ROS2 metapackages, see [REP-150](http://www.ros.org/reps/rep-0150.html).

# Ubuntu Images
The following images are mostly used for CI testing purposes.

- `arm-cross`  
ARM (arm-gnueabi-none) Cross-compilation Environment in Ubuntu 16.04
- `xenial-non-root`
- `bionic-non-root`
- `focal-non-root`
- `jammy-non-root`
