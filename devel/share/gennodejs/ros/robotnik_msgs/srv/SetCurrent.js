// Auto-generated. Do not edit!

// (in-package robotnik_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MotorCurrent = require('../msg/MotorCurrent.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetCurrentRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current = null;
    }
    else {
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = new MotorCurrent();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetCurrentRequest
    // Serialize message field [current]
    bufferOffset = MotorCurrent.serialize(obj.current, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetCurrentRequest
    let len;
    let data = new SetCurrentRequest(null);
    // Deserialize message field [current]
    data.current = MotorCurrent.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MotorCurrent.getMessageSize(object.current);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/SetCurrentRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '547e043527d4bed5832e84f185e1729c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MotorCurrent current
    
    ================================================================================
    MSG: robotnik_msgs/MotorCurrent
    # either can_id or name are set
    # if can_id is -1, then this refers to all motors.
    int32[] can_id
    string[] name
    float32[] continuous_current_limit # Amperes
    float32[] current_peak_time # Seconds
    float32[] current_peak_limit # Amperes
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetCurrentRequest(null);
    if (msg.current !== undefined) {
      resolved.current = MotorCurrent.Resolve(msg.current)
    }
    else {
      resolved.current = new MotorCurrent()
    }

    return resolved;
    }
};

class SetCurrentResponse {
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
    // Serializes a message object of type SetCurrentResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetCurrentResponse
    let len;
    let data = new SetCurrentResponse(null);
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
    return 'robotnik_msgs/SetCurrentResponse';
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
    const resolved = new SetCurrentResponse(null);
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
  Request: SetCurrentRequest,
  Response: SetCurrentResponse,
  md5sum() { return '220c889cf443b9b34fafe3d24798e477'; },
  datatype() { return 'robotnik_msgs/SetCurrent'; }
};
