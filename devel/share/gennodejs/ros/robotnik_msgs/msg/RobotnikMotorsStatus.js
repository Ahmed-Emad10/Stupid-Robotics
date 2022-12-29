// Auto-generated. Do not edit!

// (in-package robotnik_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MotorStatus = require('./MotorStatus.js');

//-----------------------------------------------------------

class RobotnikMotorsStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.motor_status = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
      if (initObj.hasOwnProperty('motor_status')) {
        this.motor_status = initObj.motor_status
      }
      else {
        this.motor_status = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotnikMotorsStatus
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [motor_status]
    // Serialize the length for message field [motor_status]
    bufferOffset = _serializer.uint32(obj.motor_status.length, buffer, bufferOffset);
    obj.motor_status.forEach((val) => {
      bufferOffset = MotorStatus.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotnikMotorsStatus
    let len;
    let data = new RobotnikMotorsStatus(null);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [motor_status]
    // Deserialize array length for message field [motor_status]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.motor_status = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.motor_status[i] = MotorStatus.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.state);
    object.motor_status.forEach((val) => {
      length += MotorStatus.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/RobotnikMotorsStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a6f76b778bb6c93074bf081a98ca69ac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Global state of the component
    string state
    # Status of the motor drive
    robotnik_msgs/MotorStatus[] motor_status
    
    
    ================================================================================
    MSG: robotnik_msgs/MotorStatus
    uint8 can_id
    string joint
    string state
    string status
    string communicationstatus
    string mode_of_operation
    string[] activestatusword
    string[] activedriveflags
    bool[] digitaloutputs
    bool[] digitalinputs
    float32 current
    float32[] analoginputs
    string statusword
    string driveflags
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotnikMotorsStatus(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    if (msg.motor_status !== undefined) {
      resolved.motor_status = new Array(msg.motor_status.length);
      for (let i = 0; i < resolved.motor_status.length; ++i) {
        resolved.motor_status[i] = MotorStatus.Resolve(msg.motor_status[i]);
      }
    }
    else {
      resolved.motor_status = []
    }

    return resolved;
    }
};

module.exports = RobotnikMotorsStatus;
