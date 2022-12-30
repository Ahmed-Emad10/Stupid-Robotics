# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robotnik_msgs: 61 messages, 38 services")

set(MSG_I_FLAGS "-Irobotnik_msgs:/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg;-Irobotnik_msgs:/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robotnik_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/encoders.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/encoders.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/inputs_outputs.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/inputs_outputs.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ptz.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ptz.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Data.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Data.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Interfaces.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Interfaces.msg" "robotnik_msgs/Data"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Axis.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Axis.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/AlarmSensor.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/AlarmSensor.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Alarms.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Alarms.msg" "robotnik_msgs/AlarmSensor"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorsStatus.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorsStatus.msg" "robotnik_msgs/MotorStatus"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/State.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/State.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ArmStatus.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ArmStatus.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatus.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatus.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatusStamped.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatusStamped.msg" "std_msgs/Header:robotnik_msgs/BatteryStatus"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatus.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatus.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatusStamped.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatusStamped.msg" "std_msgs/Header:robotnik_msgs/OdomCalibrationStatus"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatus.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatus.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatusStamped.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatusStamped.msg" "std_msgs/Header:geometry_msgs/Pose:geometry_msgs/Quaternion:robotnik_msgs/OdomManualCalibrationStatus:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorHeadingOffset.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorHeadingOffset.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorsStatusDifferential.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorsStatusDifferential.msg" "robotnik_msgs/MotorStatus"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/InverterStatus.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/InverterStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/RobotnikMotorsStatus.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/RobotnikMotorsStatus.msg" "robotnik_msgs/MotorStatus"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatus.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatus.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatusStamped.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatusStamped.msg" "std_msgs/Header:robotnik_msgs/PantiltStatus"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Cartesian_Euler_pose.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Cartesian_Euler_pose.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmmonitor.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmmonitor.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmsmonitor.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmsmonitor.msg" "robotnik_msgs/alarmmonitor"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_inputs_outputs.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_inputs_outputs.msg" "robotnik_msgs/named_input_output"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_input_output.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_input_output.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Register.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Register.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Registers.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Registers.msg" "robotnik_msgs/Register"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/StringArray.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/StringArray.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserMode.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserMode.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserStatus.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserStatus.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/SafetyModuleStatus.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/SafetyModuleStatus.msg" "robotnik_msgs/LaserStatus:robotnik_msgs/LaserMode"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/StringStamped.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/StringStamped.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/SubState.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/SubState.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/QueryAlarm.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/QueryAlarm.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatus.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatus.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatusStamped.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatusStamped.msg" "std_msgs/Header:robotnik_msgs/BatteryDockingStatus"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BoolArray.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BoolArray.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorPID.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorPID.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorCurrent.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorCurrent.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Pose2DArray.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Pose2DArray.msg" "geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Pose2DStamped.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Pose2DStamped.msg" "std_msgs/Header:geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensor.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensor.msg" "std_msgs/Header:geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensorArray.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensorArray.msg" "std_msgs/Header:geometry_msgs/Pose:robotnik_msgs/PresenceSensor:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatus.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatus.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatusArray.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatusArray.msg" "robotnik_msgs/WatchdogStatus"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValue.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValue.msg" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValueArray.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValueArray.msg" "robotnik_msgs/MotorReferenceValue"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorAction.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorAction.msg" "std_msgs/Header:robotnik_msgs/SetElevatorActionResult:actionlib_msgs/GoalID:robotnik_msgs/ElevatorAction:robotnik_msgs/SetElevatorGoal:actionlib_msgs/GoalStatus:robotnik_msgs/SetElevatorFeedback:robotnik_msgs/SetElevatorActionGoal:robotnik_msgs/SetElevatorActionFeedback:robotnik_msgs/SetElevatorResult:robotnik_msgs/ElevatorStatus"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionGoal.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionGoal.msg" "std_msgs/Header:robotnik_msgs/ElevatorAction:actionlib_msgs/GoalID:robotnik_msgs/SetElevatorGoal"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionResult.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionResult.msg" "std_msgs/Header:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:robotnik_msgs/SetElevatorResult:robotnik_msgs/ElevatorStatus"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionFeedback.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionFeedback.msg" "std_msgs/Header:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:robotnik_msgs/SetElevatorFeedback:robotnik_msgs/ElevatorStatus"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorGoal.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorGoal.msg" "robotnik_msgs/ElevatorAction"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorResult.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorResult.msg" "robotnik_msgs/ElevatorStatus"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorFeedback.msg" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorFeedback.msg" "robotnik_msgs/ElevatorStatus"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_digital_input.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_digital_input.srv" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_analog_output.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_analog_output.srv" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_mode.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_mode.srv" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_ptz.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_ptz.srv" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_mode.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_mode.srv" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_digital_output.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_digital_output.srv" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_odometry.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_odometry.srv" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_height.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_height.srv" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/enable_disable.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/enable_disable.srv" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/home.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/home.srv" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/axis_record.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/axis_record.srv" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_float_value.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_float_value.srv" "std_msgs/String"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorStatus.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorStatus.srv" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetElevator.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetElevator.srv" "robotnik_msgs/ElevatorAction"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_alarms.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_alarms.srv" "robotnik_msgs/alarmsmonitor:robotnik_msgs/alarmmonitor"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/ack_alarm.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/ack_alarm.srv" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_modbus_register.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_modbus_register.srv" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_modbus_register.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_modbus_register.srv" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetBool.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetBool.srv" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_CartesianEuler_pose.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_CartesianEuler_pose.srv" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_named_digital_output.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_named_digital_output.srv" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetLaserMode.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetLaserMode.srv" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/ResetFromSubState.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/ResetFromSubState.srv" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/QueryAlarms.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/QueryAlarms.srv" "robotnik_msgs/QueryAlarm"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetNamedDigitalOutput.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetNamedDigitalOutput.srv" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/InsertTask.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/InsertTask.srv" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorPID.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorPID.srv" "robotnik_msgs/MotorPID"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorMode.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorMode.srv" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetBuzzer.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetBuzzer.srv" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetEncoderTurns.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetEncoderTurns.srv" "robotnik_msgs/MotorHeadingOffset"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetMotorsHeadingOffset.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetMotorsHeadingOffset.srv" "std_msgs/Empty:robotnik_msgs/MotorHeadingOffset"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetPOI.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetPOI.srv" "geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetString.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetString.srv" "robotnik_msgs/ReturnMessage"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetInt16.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetInt16.srv" "std_msgs/Int16:robotnik_msgs/ReturnMessage"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetPTZ.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetPTZ.srv" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetByte.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetByte.srv" ""
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetCurrent.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetCurrent.srv" "robotnik_msgs/MotorCurrent"
)

get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetTransform.srv" NAME_WE)
add_custom_target(_robotnik_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_msgs" "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetTransform.srv" "geometry_msgs/Transform:geometry_msgs/Quaternion:geometry_msgs/Vector3:robotnik_msgs/ReturnMessage"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/inputs_outputs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ptz.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Interfaces.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Data.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Axis.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/AlarmSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Alarms.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/AlarmSensor.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorsStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ArmStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorHeadingOffset.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorsStatusDifferential.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/InverterStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/RobotnikMotorsStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Cartesian_Euler_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmmonitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmsmonitor.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmmonitor.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_inputs_outputs.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_input_output.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_input_output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Register.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Registers.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Register.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/StringArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/SafetyModuleStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserStatus.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/SubState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/QueryAlarm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BoolArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorPID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorCurrent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Pose2DArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Pose2DStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensorArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensor.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatusArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValueArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorFeedback.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionGoal.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionFeedback.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorResult.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorResult.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorFeedback.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)

### Generating Services
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_digital_input.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_analog_output.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_ptz.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_digital_output.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_odometry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_height.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/enable_disable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/home.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/axis_record.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_float_value.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetElevator.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_alarms.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmsmonitor.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmmonitor.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/ack_alarm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_modbus_register.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_modbus_register.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_CartesianEuler_pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_named_digital_output.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetLaserMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/ResetFromSubState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/QueryAlarms.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/QueryAlarm.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetNamedDigitalOutput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/InsertTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorPID.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorPID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetBuzzer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetEncoderTurns.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorHeadingOffset.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetMotorsHeadingOffset.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Empty.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorHeadingOffset.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetPOI.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetInt16.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetPTZ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetByte.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetCurrent.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorCurrent.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_cpp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetTransform.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
)

### Generating Module File
_generate_module_cpp(robotnik_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robotnik_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robotnik_msgs_generate_messages robotnik_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/encoders.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/inputs_outputs.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ptz.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Data.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Interfaces.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Axis.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/AlarmSensor.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Alarms.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorsStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/State.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ArmStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatusStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatusStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatusStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorHeadingOffset.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorsStatusDifferential.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/InverterStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/RobotnikMotorsStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatusStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Cartesian_Euler_pose.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmmonitor.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmsmonitor.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_inputs_outputs.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_input_output.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Register.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Registers.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/StringArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserMode.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/SafetyModuleStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/StringStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/SubState.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/QueryAlarm.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatusStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BoolArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorPID.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorCurrent.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Pose2DArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Pose2DStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensor.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensorArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatusArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValue.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValueArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorAction.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionGoal.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionResult.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionFeedback.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorGoal.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorResult.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorFeedback.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_digital_input.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_analog_output.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_mode.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_ptz.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_mode.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_digital_output.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_odometry.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_height.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/enable_disable.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/home.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/axis_record.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_float_value.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorStatus.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetElevator.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_alarms.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/ack_alarm.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_modbus_register.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_modbus_register.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetBool.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_CartesianEuler_pose.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_named_digital_output.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetLaserMode.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/ResetFromSubState.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/QueryAlarms.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetNamedDigitalOutput.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/InsertTask.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorPID.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorMode.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetBuzzer.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetEncoderTurns.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetMotorsHeadingOffset.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetPOI.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetString.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetInt16.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetPTZ.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetByte.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetCurrent.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetTransform.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_cpp _robotnik_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotnik_msgs_gencpp)
add_dependencies(robotnik_msgs_gencpp robotnik_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotnik_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/inputs_outputs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ptz.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Interfaces.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Data.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Axis.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/AlarmSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Alarms.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/AlarmSensor.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorsStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ArmStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorHeadingOffset.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorsStatusDifferential.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/InverterStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/RobotnikMotorsStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Cartesian_Euler_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmmonitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmsmonitor.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmmonitor.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_inputs_outputs.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_input_output.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_input_output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Register.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Registers.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Register.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/StringArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/SafetyModuleStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserStatus.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/SubState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/QueryAlarm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BoolArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorPID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorCurrent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Pose2DArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Pose2DStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensorArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensor.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatusArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValueArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorFeedback.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionGoal.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionFeedback.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorResult.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorResult.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorFeedback.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)

### Generating Services
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_digital_input.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_analog_output.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_ptz.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_digital_output.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_odometry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_height.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/enable_disable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/home.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/axis_record.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_float_value.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetElevator.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_alarms.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmsmonitor.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmmonitor.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/ack_alarm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_modbus_register.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_modbus_register.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_CartesianEuler_pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_named_digital_output.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetLaserMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/ResetFromSubState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/QueryAlarms.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/QueryAlarm.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetNamedDigitalOutput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/InsertTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorPID.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorPID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetBuzzer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetEncoderTurns.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorHeadingOffset.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetMotorsHeadingOffset.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Empty.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorHeadingOffset.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetPOI.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetInt16.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetPTZ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetByte.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetCurrent.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorCurrent.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_eus(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetTransform.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
)

### Generating Module File
_generate_module_eus(robotnik_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robotnik_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robotnik_msgs_generate_messages robotnik_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/encoders.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/inputs_outputs.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ptz.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Data.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Interfaces.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Axis.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/AlarmSensor.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Alarms.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorsStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/State.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ArmStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatusStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatusStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatusStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorHeadingOffset.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorsStatusDifferential.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/InverterStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/RobotnikMotorsStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatusStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Cartesian_Euler_pose.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmmonitor.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmsmonitor.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_inputs_outputs.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_input_output.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Register.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Registers.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/StringArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserMode.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/SafetyModuleStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/StringStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/SubState.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/QueryAlarm.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatusStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BoolArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorPID.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorCurrent.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Pose2DArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Pose2DStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensor.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensorArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatusArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValue.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValueArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorAction.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionGoal.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionResult.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionFeedback.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorGoal.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorResult.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorFeedback.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_digital_input.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_analog_output.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_mode.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_ptz.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_mode.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_digital_output.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_odometry.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_height.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/enable_disable.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/home.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/axis_record.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_float_value.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorStatus.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetElevator.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_alarms.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/ack_alarm.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_modbus_register.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_modbus_register.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetBool.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_CartesianEuler_pose.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_named_digital_output.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetLaserMode.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/ResetFromSubState.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/QueryAlarms.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetNamedDigitalOutput.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/InsertTask.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorPID.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorMode.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetBuzzer.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetEncoderTurns.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetMotorsHeadingOffset.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetPOI.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetString.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetInt16.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetPTZ.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetByte.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetCurrent.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetTransform.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_eus _robotnik_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotnik_msgs_geneus)
add_dependencies(robotnik_msgs_geneus robotnik_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotnik_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/inputs_outputs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ptz.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Interfaces.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Data.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Axis.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/AlarmSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Alarms.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/AlarmSensor.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorsStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ArmStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorHeadingOffset.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorsStatusDifferential.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/InverterStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/RobotnikMotorsStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Cartesian_Euler_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmmonitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmsmonitor.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmmonitor.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_inputs_outputs.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_input_output.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_input_output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Register.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Registers.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Register.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/StringArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/SafetyModuleStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserStatus.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/SubState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/QueryAlarm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BoolArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorPID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorCurrent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Pose2DArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Pose2DStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensorArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensor.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatusArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValueArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorFeedback.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionGoal.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionFeedback.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorResult.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorResult.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorFeedback.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)

### Generating Services
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_digital_input.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_analog_output.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_ptz.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_digital_output.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_odometry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_height.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/enable_disable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/home.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/axis_record.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_float_value.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetElevator.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_alarms.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmsmonitor.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmmonitor.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/ack_alarm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_modbus_register.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_modbus_register.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_CartesianEuler_pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_named_digital_output.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetLaserMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/ResetFromSubState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/QueryAlarms.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/QueryAlarm.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetNamedDigitalOutput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/InsertTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorPID.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorPID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetBuzzer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetEncoderTurns.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorHeadingOffset.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetMotorsHeadingOffset.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Empty.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorHeadingOffset.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetPOI.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetInt16.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetPTZ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetByte.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetCurrent.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorCurrent.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_lisp(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetTransform.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
)

### Generating Module File
_generate_module_lisp(robotnik_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robotnik_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robotnik_msgs_generate_messages robotnik_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/encoders.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/inputs_outputs.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ptz.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Data.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Interfaces.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Axis.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/AlarmSensor.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Alarms.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorsStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/State.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ArmStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatusStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatusStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatusStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorHeadingOffset.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorsStatusDifferential.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/InverterStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/RobotnikMotorsStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatusStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Cartesian_Euler_pose.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmmonitor.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmsmonitor.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_inputs_outputs.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_input_output.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Register.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Registers.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/StringArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserMode.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/SafetyModuleStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/StringStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/SubState.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/QueryAlarm.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatusStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BoolArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorPID.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorCurrent.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Pose2DArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Pose2DStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensor.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensorArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatusArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValue.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValueArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorAction.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionGoal.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionResult.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionFeedback.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorGoal.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorResult.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorFeedback.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_digital_input.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_analog_output.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_mode.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_ptz.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_mode.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_digital_output.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_odometry.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_height.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/enable_disable.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/home.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/axis_record.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_float_value.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorStatus.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetElevator.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_alarms.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/ack_alarm.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_modbus_register.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_modbus_register.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetBool.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_CartesianEuler_pose.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_named_digital_output.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetLaserMode.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/ResetFromSubState.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/QueryAlarms.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetNamedDigitalOutput.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/InsertTask.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorPID.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorMode.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetBuzzer.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetEncoderTurns.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetMotorsHeadingOffset.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetPOI.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetString.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetInt16.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetPTZ.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetByte.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetCurrent.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetTransform.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_lisp _robotnik_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotnik_msgs_genlisp)
add_dependencies(robotnik_msgs_genlisp robotnik_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotnik_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/inputs_outputs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ptz.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Interfaces.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Data.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Axis.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/AlarmSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Alarms.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/AlarmSensor.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorsStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ArmStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorHeadingOffset.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorsStatusDifferential.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/InverterStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/RobotnikMotorsStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Cartesian_Euler_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmmonitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmsmonitor.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmmonitor.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_inputs_outputs.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_input_output.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_input_output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Register.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Registers.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Register.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/StringArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/SafetyModuleStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserStatus.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/SubState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/QueryAlarm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BoolArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorPID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorCurrent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Pose2DArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Pose2DStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensorArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensor.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatusArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValueArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorFeedback.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionGoal.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionFeedback.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorResult.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorResult.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorFeedback.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)

### Generating Services
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_digital_input.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_analog_output.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_ptz.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_digital_output.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_odometry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_height.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/enable_disable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/home.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/axis_record.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_float_value.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetElevator.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_alarms.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmsmonitor.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmmonitor.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/ack_alarm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_modbus_register.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_modbus_register.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_CartesianEuler_pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_named_digital_output.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetLaserMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/ResetFromSubState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/QueryAlarms.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/QueryAlarm.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetNamedDigitalOutput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/InsertTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorPID.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorPID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetBuzzer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetEncoderTurns.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorHeadingOffset.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetMotorsHeadingOffset.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Empty.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorHeadingOffset.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetPOI.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetInt16.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetPTZ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetByte.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetCurrent.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorCurrent.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_nodejs(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetTransform.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
)

### Generating Module File
_generate_module_nodejs(robotnik_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robotnik_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robotnik_msgs_generate_messages robotnik_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/encoders.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/inputs_outputs.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ptz.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Data.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Interfaces.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Axis.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/AlarmSensor.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Alarms.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorsStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/State.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ArmStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatusStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatusStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatusStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorHeadingOffset.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorsStatusDifferential.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/InverterStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/RobotnikMotorsStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatusStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Cartesian_Euler_pose.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmmonitor.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmsmonitor.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_inputs_outputs.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_input_output.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Register.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Registers.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/StringArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserMode.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/SafetyModuleStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/StringStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/SubState.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/QueryAlarm.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatusStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BoolArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorPID.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorCurrent.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Pose2DArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Pose2DStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensor.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensorArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatusArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValue.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValueArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorAction.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionGoal.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionResult.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionFeedback.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorGoal.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorResult.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorFeedback.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_digital_input.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_analog_output.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_mode.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_ptz.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_mode.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_digital_output.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_odometry.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_height.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/enable_disable.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/home.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/axis_record.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_float_value.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorStatus.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetElevator.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_alarms.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/ack_alarm.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_modbus_register.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_modbus_register.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetBool.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_CartesianEuler_pose.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_named_digital_output.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetLaserMode.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/ResetFromSubState.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/QueryAlarms.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetNamedDigitalOutput.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/InsertTask.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorPID.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorMode.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetBuzzer.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetEncoderTurns.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetMotorsHeadingOffset.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetPOI.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetString.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetInt16.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetPTZ.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetByte.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetCurrent.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetTransform.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_nodejs _robotnik_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotnik_msgs_gennodejs)
add_dependencies(robotnik_msgs_gennodejs robotnik_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotnik_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/inputs_outputs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ptz.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Interfaces.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Data.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Axis.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/AlarmSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Alarms.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/AlarmSensor.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorsStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ArmStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorHeadingOffset.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorsStatusDifferential.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/InverterStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/RobotnikMotorsStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Cartesian_Euler_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmmonitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmsmonitor.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmmonitor.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_inputs_outputs.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_input_output.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_input_output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Register.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Registers.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Register.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/StringArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/SafetyModuleStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserStatus.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/SubState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/QueryAlarm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BoolArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorPID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorCurrent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Pose2DArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Pose2DStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensorArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensor.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatusArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValueArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorFeedback.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionGoal.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionFeedback.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorResult.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorResult.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorFeedback.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_msg_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)

### Generating Services
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_digital_input.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_analog_output.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_ptz.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_digital_output.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_odometry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_height.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/enable_disable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/home.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/axis_record.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_float_value.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetElevator.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_alarms.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmsmonitor.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmmonitor.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/ack_alarm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_modbus_register.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_modbus_register.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_CartesianEuler_pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_named_digital_output.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetLaserMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/ResetFromSubState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/QueryAlarms.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/QueryAlarm.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetNamedDigitalOutput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/InsertTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorPID.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorPID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetBuzzer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetEncoderTurns.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorHeadingOffset.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetMotorsHeadingOffset.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Empty.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorHeadingOffset.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetPOI.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetInt16.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetPTZ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetByte.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetCurrent.srv"
  "${MSG_I_FLAGS}"
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorCurrent.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)
_generate_srv_py(robotnik_msgs
  "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetTransform.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
)

### Generating Module File
_generate_module_py(robotnik_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robotnik_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robotnik_msgs_generate_messages robotnik_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/encoders.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/inputs_outputs.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ptz.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Data.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Interfaces.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Axis.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/AlarmSensor.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Alarms.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorsStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/State.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ArmStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryStatusStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomCalibrationStatusStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/OdomManualCalibrationStatusStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorHeadingOffset.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorsStatusDifferential.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/InverterStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/RobotnikMotorsStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorAction.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ElevatorStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PantiltStatusStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Cartesian_Euler_pose.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmmonitor.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/alarmsmonitor.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_inputs_outputs.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/named_input_output.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Register.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Registers.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/StringArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserMode.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/LaserStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/SafetyModuleStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/StringStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/SubState.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/QueryAlarm.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BatteryDockingStatusStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/BoolArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorPID.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorCurrent.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Pose2DArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/Pose2DStamped.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/ReturnMessage.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensor.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/PresenceSensorArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatus.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/WatchdogStatusArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValue.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/msg/MotorReferenceValueArray.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorAction.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionGoal.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionResult.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorActionFeedback.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorGoal.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorResult.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/devel/share/robotnik_msgs/msg/SetElevatorFeedback.msg" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_digital_input.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_analog_output.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_mode.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_ptz.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_mode.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_digital_output.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_odometry.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_height.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/enable_disable.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/home.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/axis_record.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_float_value.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorStatus.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetElevator.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_alarms.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/ack_alarm.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_modbus_register.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/get_modbus_register.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetBool.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_CartesianEuler_pose.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/set_named_digital_output.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetLaserMode.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/ResetFromSubState.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/QueryAlarms.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetNamedDigitalOutput.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/InsertTask.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorPID.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetMotorMode.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetBuzzer.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetEncoderTurns.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetMotorsHeadingOffset.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetPOI.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetString.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetInt16.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/GetPTZ.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetByte.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetCurrent.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmemad/Stupid-Robotics/src/robotnik_msgs/srv/SetTransform.srv" NAME_WE)
add_dependencies(robotnik_msgs_generate_messages_py _robotnik_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotnik_msgs_genpy)
add_dependencies(robotnik_msgs_genpy robotnik_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotnik_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(robotnik_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robotnik_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(robotnik_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(robotnik_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robotnik_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(robotnik_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(robotnik_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robotnik_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(robotnik_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(robotnik_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robotnik_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(robotnik_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(robotnik_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robotnik_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(robotnik_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
