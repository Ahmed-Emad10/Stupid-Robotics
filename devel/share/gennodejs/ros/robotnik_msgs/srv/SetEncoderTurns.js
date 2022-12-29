// Auto-generated. Do not edit!

// (in-package robotnik_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MotorHeadingOffset = require('../msg/MotorHeadingOffset.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetEncoderTurnsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.encoder_turns = null;
    }
    else {
      if (initObj.hasOwnProperty('encoder_turns')) {
        this.encoder_turns = initObj.encoder_turns
      }
      else {
        this.encoder_turns = new MotorHeadingOffset();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetEncoderTurnsRequest
    // Serialize message field [encoder_turns]
    bufferOffset = MotorHeadingOffset.serialize(obj.encoder_turns, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetEncoderTurnsRequest
    let len;
    let data = new SetEncoderTurnsRequest(null);
    // Deserialize message field [encoder_turns]
    data.encoder_turns = MotorHeadingOffset.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/SetEncoderTurnsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '34cf70b52bbe3c3e3567eb0d481c62de';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    robotnik_msgs/MotorHeadingOffset encoder_turns
    
    ================================================================================
    MSG: robotnik_msgs/MotorHeadingOffset
    int32 motor
    float64 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetEncoderTurnsRequest(null);
    if (msg.encoder_turns !== undefined) {
      resolved.encoder_turns = MotorHeadingOffset.Resolve(msg.encoder_turns)
    }
    else {
      resolved.encoder_turns = new MotorHeadingOffset()
    }

    return resolved;
    }
};

class SetEncoderTurnsResponse {
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
    // Serializes a message object of type SetEncoderTurnsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetEncoderTurnsResponse
    let len;
    let data = new SetEncoderTurnsResponse(null);
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
    return 'robotnik_msgs/SetEncoderTurnsResponse';
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
    const resolved = new SetEncoderTurnsResponse(null);
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
  Request: SetEncoderTurnsRequest,
  Response: SetEncoderTurnsResponse,
  md5sum() { return '75098e1521736fbeb9e5afbd06f20712'; },
  datatype() { return 'robotnik_msgs/SetEncoderTurns'; }
};
