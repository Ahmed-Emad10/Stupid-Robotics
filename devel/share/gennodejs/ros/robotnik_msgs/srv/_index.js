
"use strict";

let GetPOI = require('./GetPOI.js')
let SetMotorMode = require('./SetMotorMode.js')
let ResetFromSubState = require('./ResetFromSubState.js')
let GetPTZ = require('./GetPTZ.js')
let axis_record = require('./axis_record.js')
let SetEncoderTurns = require('./SetEncoderTurns.js')
let SetMotorPID = require('./SetMotorPID.js')
let SetCurrent = require('./SetCurrent.js')
let get_digital_input = require('./get_digital_input.js')
let set_float_value = require('./set_float_value.js')
let GetMotorsHeadingOffset = require('./GetMotorsHeadingOffset.js')
let SetMotorStatus = require('./SetMotorStatus.js')
let QueryAlarms = require('./QueryAlarms.js')
let set_odometry = require('./set_odometry.js')
let home = require('./home.js')
let set_digital_output = require('./set_digital_output.js')
let set_CartesianEuler_pose = require('./set_CartesianEuler_pose.js')
let get_modbus_register = require('./get_modbus_register.js')
let get_alarms = require('./get_alarms.js')
let get_mode = require('./get_mode.js')
let InsertTask = require('./InsertTask.js')
let set_modbus_register = require('./set_modbus_register.js')
let SetLaserMode = require('./SetLaserMode.js')
let SetByte = require('./SetByte.js')
let SetInt16 = require('./SetInt16.js')
let enable_disable = require('./enable_disable.js')
let SetTransform = require('./SetTransform.js')
let set_named_digital_output = require('./set_named_digital_output.js')
let set_analog_output = require('./set_analog_output.js')
let set_mode = require('./set_mode.js')
let SetNamedDigitalOutput = require('./SetNamedDigitalOutput.js')
let set_height = require('./set_height.js')
let ack_alarm = require('./ack_alarm.js')
let SetElevator = require('./SetElevator.js')
let SetString = require('./SetString.js')
let GetBool = require('./GetBool.js')
let set_ptz = require('./set_ptz.js')
let SetBuzzer = require('./SetBuzzer.js')

module.exports = {
  GetPOI: GetPOI,
  SetMotorMode: SetMotorMode,
  ResetFromSubState: ResetFromSubState,
  GetPTZ: GetPTZ,
  axis_record: axis_record,
  SetEncoderTurns: SetEncoderTurns,
  SetMotorPID: SetMotorPID,
  SetCurrent: SetCurrent,
  get_digital_input: get_digital_input,
  set_float_value: set_float_value,
  GetMotorsHeadingOffset: GetMotorsHeadingOffset,
  SetMotorStatus: SetMotorStatus,
  QueryAlarms: QueryAlarms,
  set_odometry: set_odometry,
  home: home,
  set_digital_output: set_digital_output,
  set_CartesianEuler_pose: set_CartesianEuler_pose,
  get_modbus_register: get_modbus_register,
  get_alarms: get_alarms,
  get_mode: get_mode,
  InsertTask: InsertTask,
  set_modbus_register: set_modbus_register,
  SetLaserMode: SetLaserMode,
  SetByte: SetByte,
  SetInt16: SetInt16,
  enable_disable: enable_disable,
  SetTransform: SetTransform,
  set_named_digital_output: set_named_digital_output,
  set_analog_output: set_analog_output,
  set_mode: set_mode,
  SetNamedDigitalOutput: SetNamedDigitalOutput,
  set_height: set_height,
  ack_alarm: ack_alarm,
  SetElevator: SetElevator,
  SetString: SetString,
  GetBool: GetBool,
  set_ptz: set_ptz,
  SetBuzzer: SetBuzzer,
};
