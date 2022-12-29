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

class MotorsStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.flwStatus = null;
      this.blwStatus = null;
      this.frwStatus = null;
      this.brwStatus = null;
    }
    else {
      if (initObj.hasOwnProperty('flwStatus')) {
        this.flwStatus = initObj.flwStatus
      }
      else {
        this.flwStatus = new MotorStatus();
      }
      if (initObj.hasOwnProperty('blwStatus')) {
        this.blwStatus = initObj.blwStatus
      }
      else {
        this.blwStatus = new MotorStatus();
      }
      if (initObj.hasOwnProperty('frwStatus')) {
        this.frwStatus = initObj.frwStatus
      }
      else {
        this.frwStatus = new MotorStatus();
      }
      if (initObj.hasOwnProperty('brwStatus')) {
        this.brwStatus = initObj.brwStatus
      }
      else {
        this.brwStatus = new MotorStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorsStatus
    // Serialize message field [flwStatus]
    bufferOffset = MotorStatus.serialize(obj.flwStatus, buffer, bufferOffset);
    // Serialize message field [blwStatus]
    bufferOffset = MotorStatus.serialize(obj.blwStatus, buffer, bufferOffset);
    // Serialize message field [frwStatus]
    bufferOffset = MotorStatus.serialize(obj.frwStatus, buffer, bufferOffset);
    // Serialize message field [brwStatus]
    bufferOffset = MotorStatus.serialize(obj.brwStatus, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorsStatus
    let len;
    let data = new MotorsStatus(null);
    // Deserialize message field [flwStatus]
    data.flwStatus = MotorStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [blwStatus]
    data.blwStatus = MotorStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [frwStatus]
    data.frwStatus = MotorStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [brwStatus]
    data.brwStatus = MotorStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MotorStatus.getMessageSize(object.flwStatus);
    length += MotorStatus.getMessageSize(object.blwStatus);
    length += MotorStatus.getMessageSize(object.frwStatus);
    length += MotorStatus.getMessageSize(object.brwStatus);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/MotorsStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8737e2a027c7f183f76ac545960670cc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MotorStatus flwStatus
    MotorStatus blwStatus
    MotorStatus frwStatus
    MotorStatus brwStatus
    
    
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
    const resolved = new MotorsStatus(null);
    if (msg.flwStatus !== undefined) {
      resolved.flwStatus = MotorStatus.Resolve(msg.flwStatus)
    }
    else {
      resolved.flwStatus = new MotorStatus()
    }

    if (msg.blwStatus !== undefined) {
      resolved.blwStatus = MotorStatus.Resolve(msg.blwStatus)
    }
    else {
      resolved.blwStatus = new MotorStatus()
    }

    if (msg.frwStatus !== undefined) {
      resolved.frwStatus = MotorStatus.Resolve(msg.frwStatus)
    }
    else {
      resolved.frwStatus = new MotorStatus()
    }

    if (msg.brwStatus !== undefined) {
      resolved.brwStatus = MotorStatus.Resolve(msg.brwStatus)
    }
    else {
      resolved.brwStatus = new MotorStatus()
    }

    return resolved;
    }
};

module.exports = MotorsStatus;
