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

class MotorsStatusDifferential {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lwStatus = null;
      this.rwStatus = null;
    }
    else {
      if (initObj.hasOwnProperty('lwStatus')) {
        this.lwStatus = initObj.lwStatus
      }
      else {
        this.lwStatus = new MotorStatus();
      }
      if (initObj.hasOwnProperty('rwStatus')) {
        this.rwStatus = initObj.rwStatus
      }
      else {
        this.rwStatus = new MotorStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorsStatusDifferential
    // Serialize message field [lwStatus]
    bufferOffset = MotorStatus.serialize(obj.lwStatus, buffer, bufferOffset);
    // Serialize message field [rwStatus]
    bufferOffset = MotorStatus.serialize(obj.rwStatus, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorsStatusDifferential
    let len;
    let data = new MotorsStatusDifferential(null);
    // Deserialize message field [lwStatus]
    data.lwStatus = MotorStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [rwStatus]
    data.rwStatus = MotorStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MotorStatus.getMessageSize(object.lwStatus);
    length += MotorStatus.getMessageSize(object.rwStatus);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/MotorsStatusDifferential';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '54c939ea4e1227a032aeca24b67584ad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MotorStatus lwStatus
    MotorStatus rwStatus
    
    
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
    const resolved = new MotorsStatusDifferential(null);
    if (msg.lwStatus !== undefined) {
      resolved.lwStatus = MotorStatus.Resolve(msg.lwStatus)
    }
    else {
      resolved.lwStatus = new MotorStatus()
    }

    if (msg.rwStatus !== undefined) {
      resolved.rwStatus = MotorStatus.Resolve(msg.rwStatus)
    }
    else {
      resolved.rwStatus = new MotorStatus()
    }

    return resolved;
    }
};

module.exports = MotorsStatusDifferential;
