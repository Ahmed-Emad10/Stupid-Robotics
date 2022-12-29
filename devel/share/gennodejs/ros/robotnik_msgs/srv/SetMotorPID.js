// Auto-generated. Do not edit!

// (in-package robotnik_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MotorPID = require('../msg/MotorPID.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetMotorPIDRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pid = null;
    }
    else {
      if (initObj.hasOwnProperty('pid')) {
        this.pid = initObj.pid
      }
      else {
        this.pid = new MotorPID();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetMotorPIDRequest
    // Serialize message field [pid]
    bufferOffset = MotorPID.serialize(obj.pid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetMotorPIDRequest
    let len;
    let data = new SetMotorPIDRequest(null);
    // Deserialize message field [pid]
    data.pid = MotorPID.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MotorPID.getMessageSize(object.pid);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/SetMotorPIDRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3c1e18bd557fca88ee3a5e13186ec0ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MotorPID pid
    
    ================================================================================
    MSG: robotnik_msgs/MotorPID
    # either can_id or name are set
    # if can_id is -1, then this refers to all motors.
    int32[] can_id
    string[] name
    float32[] kp
    float32[] ki
    float32[] kd
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetMotorPIDRequest(null);
    if (msg.pid !== undefined) {
      resolved.pid = MotorPID.Resolve(msg.pid)
    }
    else {
      resolved.pid = new MotorPID()
    }

    return resolved;
    }
};

class SetMotorPIDResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetMotorPIDResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetMotorPIDResponse
    let len;
    let data = new SetMotorPIDResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/SetMotorPIDResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetMotorPIDResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SetMotorPIDRequest,
  Response: SetMotorPIDResponse,
  md5sum() { return 'b471f23ed4110be72a67eb0fa77abae1'; },
  datatype() { return 'robotnik_msgs/SetMotorPID'; }
};
