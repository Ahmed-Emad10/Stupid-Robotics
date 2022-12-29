
"use strict";

let Pose2DArray = require('./Pose2DArray.js');
let OdomManualCalibrationStatus = require('./OdomManualCalibrationStatus.js');
let MotorCurrent = require('./MotorCurrent.js');
let LaserStatus = require('./LaserStatus.js');
let BatteryDockingStatusStamped = require('./BatteryDockingStatusStamped.js');
let named_inputs_outputs = require('./named_inputs_outputs.js');
let BatteryStatus = require('./BatteryStatus.js');
let PantiltStatusStamped = require('./PantiltStatusStamped.js');
let PantiltStatus = require('./PantiltStatus.js');
let MotorsStatus = require('./MotorsStatus.js');
let OdomCalibrationStatusStamped = require('./OdomCalibrationStatusStamped.js');
let alarmsmonitor = require('./alarmsmonitor.js');
let Registers = require('./Registers.js');
let WatchdogStatusArray = require('./WatchdogStatusArray.js');
let named_input_output = require('./named_input_output.js');
let State = require('./State.js');
let MotorHeadingOffset = require('./MotorHeadingOffset.js');
let MotorStatus = require('./MotorStatus.js');
let ReturnMessage = require('./ReturnMessage.js');
let QueryAlarm = require('./QueryAlarm.js');
let ElevatorAction = require('./ElevatorAction.js');
let encoders = require('./encoders.js');
let Pose2DStamped = require('./Pose2DStamped.js');
let ElevatorStatus = require('./ElevatorStatus.js');
let MotorReferenceValue = require('./MotorReferenceValue.js');
let Interfaces = require('./Interfaces.js');
let SubState = require('./SubState.js');
let BoolArray = require('./BoolArray.js');
let BatteryStatusStamped = require('./BatteryStatusStamped.js');
let alarmmonitor = require('./alarmmonitor.js');
let LaserMode = require('./LaserMode.js');
let MotorPID = require('./MotorPID.js');
let inputs_outputs = require('./inputs_outputs.js');
let InverterStatus = require('./InverterStatus.js');
let PresenceSensor = require('./PresenceSensor.js');
let StringArray = require('./StringArray.js');
let Data = require('./Data.js');
let SafetyModuleStatus = require('./SafetyModuleStatus.js');
let Cartesian_Euler_pose = require('./Cartesian_Euler_pose.js');
let AlarmSensor = require('./AlarmSensor.js');
let MotorsStatusDifferential = require('./MotorsStatusDifferential.js');
let OdomCalibrationStatus = require('./OdomCalibrationStatus.js');
let StringStamped = require('./StringStamped.js');
let MotorReferenceValueArray = require('./MotorReferenceValueArray.js');
let ArmStatus = require('./ArmStatus.js');
let RobotnikMotorsStatus = require('./RobotnikMotorsStatus.js');
let PresenceSensorArray = require('./PresenceSensorArray.js');
let Register = require('./Register.js');
let Alarms = require('./Alarms.js');
let Axis = require('./Axis.js');
let ptz = require('./ptz.js');
let OdomManualCalibrationStatusStamped = require('./OdomManualCalibrationStatusStamped.js');
let BatteryDockingStatus = require('./BatteryDockingStatus.js');
let WatchdogStatus = require('./WatchdogStatus.js');
let SetElevatorActionResult = require('./SetElevatorActionResult.js');
let SetElevatorFeedback = require('./SetElevatorFeedback.js');
let SetElevatorResult = require('./SetElevatorResult.js');
let SetElevatorActionFeedback = require('./SetElevatorActionFeedback.js');
let SetElevatorAction = require('./SetElevatorAction.js');
let SetElevatorGoal = require('./SetElevatorGoal.js');
let SetElevatorActionGoal = require('./SetElevatorActionGoal.js');

module.exports = {
  Pose2DArray: Pose2DArray,
  OdomManualCalibrationStatus: OdomManualCalibrationStatus,
  MotorCurrent: MotorCurrent,
  LaserStatus: LaserStatus,
  BatteryDockingStatusStamped: BatteryDockingStatusStamped,
  named_inputs_outputs: named_inputs_outputs,
  BatteryStatus: BatteryStatus,
  PantiltStatusStamped: PantiltStatusStamped,
  PantiltStatus: PantiltStatus,
  MotorsStatus: MotorsStatus,
  OdomCalibrationStatusStamped: OdomCalibrationStatusStamped,
  alarmsmonitor: alarmsmonitor,
  Registers: Registers,
  WatchdogStatusArray: WatchdogStatusArray,
  named_input_output: named_input_output,
  State: State,
  MotorHeadingOffset: MotorHeadingOffset,
  MotorStatus: MotorStatus,
  ReturnMessage: ReturnMessage,
  QueryAlarm: QueryAlarm,
  ElevatorAction: ElevatorAction,
  encoders: encoders,
  Pose2DStamped: Pose2DStamped,
  ElevatorStatus: ElevatorStatus,
  MotorReferenceValue: MotorReferenceValue,
  Interfaces: Interfaces,
  SubState: SubState,
  BoolArray: BoolArray,
  BatteryStatusStamped: BatteryStatusStamped,
  alarmmonitor: alarmmonitor,
  LaserMode: LaserMode,
  MotorPID: MotorPID,
  inputs_outputs: inputs_outputs,
  InverterStatus: InverterStatus,
  PresenceSensor: PresenceSensor,
  StringArray: StringArray,
  Data: Data,
  SafetyModuleStatus: SafetyModuleStatus,
  Cartesian_Euler_pose: Cartesian_Euler_pose,
  AlarmSensor: AlarmSensor,
  MotorsStatusDifferential: MotorsStatusDifferential,
  OdomCalibrationStatus: OdomCalibrationStatus,
  StringStamped: StringStamped,
  MotorReferenceValueArray: MotorReferenceValueArray,
  ArmStatus: ArmStatus,
  RobotnikMotorsStatus: RobotnikMotorsStatus,
  PresenceSensorArray: PresenceSensorArray,
  Register: Register,
  Alarms: Alarms,
  Axis: Axis,
  ptz: ptz,
  OdomManualCalibrationStatusStamped: OdomManualCalibrationStatusStamped,
  BatteryDockingStatus: BatteryDockingStatus,
  WatchdogStatus: WatchdogStatus,
  SetElevatorActionResult: SetElevatorActionResult,
  SetElevatorFeedback: SetElevatorFeedback,
  SetElevatorResult: SetElevatorResult,
  SetElevatorActionFeedback: SetElevatorActionFeedback,
  SetElevatorAction: SetElevatorAction,
  SetElevatorGoal: SetElevatorGoal,
  SetElevatorActionGoal: SetElevatorActionGoal,
};
