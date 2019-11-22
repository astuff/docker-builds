set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR $ENV{SYSTEM_PROCESSOR})
set(CMAKE_CROSSCOMPILING ON)
set(CMAKE_SYSROOT $ENV{SYSROOT_FOLDER})
set(ROS_DISTRO $ENV{ROS_DISTRO})

set(CMAKE_C_COMPILER $ENV{CC})
set(CMAKE_CXX_COMPILER $ENV{CXX})

set(_pkgconfig_paths)
list(APPEND _pkgconfig_paths "${CMAKE_SYSROOT}/usr/lib/${CMAKE_SYSTEM_PROCESSOR}-linux-gnu/pkgconfig")
list(APPEND _pkgconfig_paths "${CMAKE_SYSROOT}/usr/lib/openmpi/lib/pkgconfig")
list(APPEND _pkgconfig_paths "${CMAKE_SYSROOT}/usr/lib/pkgconfig")
list(APPEND _pkgconfig_paths "${CMAKE_SYSROOT}/usr/share/pkgconfig")
list(APPEND _pkgconfig_paths "${CMAKE_SYSROOT}/opt/ros/${ROS_DISTRO}/lib/${CMAKE_SYSTEM_PROCESSOR}-linux-gnu/pkgconfig")
list(APPEND _pkgconfig_paths "${CMAKE_SYSROOT}/opt/ros/${ROS_DISTRO}/lib/pkgconfig")
string(REPLACE ";" ":" _pkgconfig_paths "${_pkgconfig_paths}")
set(ENV{PKG_CONFIG_PATH} "${_pkgconfig_paths}")

# where is the target environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# This assumes that pthread will be available on the target system
# (this emulates that the return of the TRY_RUN is a return code "0"
set(THREADS_PTHREAD_ARG "0"
  CACHE STRING "Result from TRY_RUN" FORCE)

if(${CMAKE_SYSTEM_PROCESSOR} EQUAL "aarch64")
  set(MRT_ARCH "armv8-a")
elseif(${CMAKE_SYSTEM_PROCESSOR} EQUAL "arm")
  set(MRT_ARCH "armv7")
endif()
