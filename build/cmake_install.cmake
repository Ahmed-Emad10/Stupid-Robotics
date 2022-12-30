# Install script for directory: /home/ahmemad/Stupid-Robotics/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ahmemad/Stupid-Robotics/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ahmemad/Stupid-Robotics/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ahmemad/Stupid-Robotics/install" TYPE PROGRAM FILES "/home/ahmemad/Stupid-Robotics/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ahmemad/Stupid-Robotics/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ahmemad/Stupid-Robotics/install" TYPE PROGRAM FILES "/home/ahmemad/Stupid-Robotics/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ahmemad/Stupid-Robotics/install/setup.bash;/home/ahmemad/Stupid-Robotics/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ahmemad/Stupid-Robotics/install" TYPE FILE FILES
    "/home/ahmemad/Stupid-Robotics/build/catkin_generated/installspace/setup.bash"
    "/home/ahmemad/Stupid-Robotics/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ahmemad/Stupid-Robotics/install/setup.sh;/home/ahmemad/Stupid-Robotics/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ahmemad/Stupid-Robotics/install" TYPE FILE FILES
    "/home/ahmemad/Stupid-Robotics/build/catkin_generated/installspace/setup.sh"
    "/home/ahmemad/Stupid-Robotics/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ahmemad/Stupid-Robotics/install/setup.zsh;/home/ahmemad/Stupid-Robotics/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ahmemad/Stupid-Robotics/install" TYPE FILE FILES
    "/home/ahmemad/Stupid-Robotics/build/catkin_generated/installspace/setup.zsh"
    "/home/ahmemad/Stupid-Robotics/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ahmemad/Stupid-Robotics/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ahmemad/Stupid-Robotics/install" TYPE FILE FILES "/home/ahmemad/Stupid-Robotics/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ahmemad/Stupid-Robotics/build/gtest/cmake_install.cmake")
  include("/home/ahmemad/Stupid-Robotics/build/robotnik_msgs/cmake_install.cmake")
  include("/home/ahmemad/Stupid-Robotics/build/summit_xl_common/summit_xl_common/cmake_install.cmake")
  include("/home/ahmemad/Stupid-Robotics/build/summit_xl_common/summit_xl_navigation/cmake_install.cmake")
  include("/home/ahmemad/Stupid-Robotics/build/summit_xl_common/summit_xl_perception/cmake_install.cmake")
  include("/home/ahmemad/Stupid-Robotics/build/summit_xl_common/summit_xl_robot_local_control/cmake_install.cmake")
  include("/home/ahmemad/Stupid-Robotics/build/summit_xl_sim/summit_xl_sim/cmake_install.cmake")
  include("/home/ahmemad/Stupid-Robotics/build/summit_xl_sim/summit_xl_sim_bringup/cmake_install.cmake")
  include("/home/ahmemad/Stupid-Robotics/build/project_reqs/cmake_install.cmake")
  include("/home/ahmemad/Stupid-Robotics/build/summit_xl_common/summit_xl_pad/cmake_install.cmake")
  include("/home/ahmemad/Stupid-Robotics/build/ira_laser_tools/cmake_install.cmake")
  include("/home/ahmemad/Stupid-Robotics/build/summit_xl_common/summit_xl_localization/cmake_install.cmake")
  include("/home/ahmemad/Stupid-Robotics/build/robotnik_sensors/cmake_install.cmake")
  include("/home/ahmemad/Stupid-Robotics/build/summit_xl_common/summit_xl_control/cmake_install.cmake")
  include("/home/ahmemad/Stupid-Robotics/build/summit_xl_common/summit_xl_description/cmake_install.cmake")
  include("/home/ahmemad/Stupid-Robotics/build/summit_xl_sim/summit_xl_gazebo/cmake_install.cmake")
  include("/home/ahmemad/Stupid-Robotics/build/summit_xl_common/moveit/summit_xl_j2s6s200_moveit_config/cmake_install.cmake")
  include("/home/ahmemad/Stupid-Robotics/build/summit_xl_common/moveit/summit_xl_j2s6s300_moveit_config/cmake_install.cmake")
  include("/home/ahmemad/Stupid-Robotics/build/summit_xl_common/moveit/summit_xl_j2s7s300_moveit_config/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/ahmemad/Stupid-Robotics/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
