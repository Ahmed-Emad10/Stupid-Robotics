// Auto-generated. Do not edit!

// (in-package robotnik_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

let MotorHeadingOffset = require('../msg/MotorHeadingOffset.js');

//-----------------------------------------------------------

class GetMotorsHeadingOffsetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.request = null;
    }
    else {
      if (initObj.hasOwnProperty('request')) {
        this.request = initObj.request
      }
      else {
        this.request = new std_msgs.msg.Empty();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMotorsHeadingOffsetRequest
    // Serialize message field [request]
    bufferOffset = std_msgs.msg.Empty.serialize(obj.request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMotorsHeadingOffsetRequest
    let len;
    let data = new GetMotorsHeadingOffsetRequest(null);
    // Deserialize message field [request]
    data.request = std_msgs.msg.Empty.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/GetMotorsHeadingOffsetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '57c42d82c9bab8a1ec9de111b7540471';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Empty request
    
    ================================================================================
    MSG: std_msgs/Empty
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMotorsHeadingOffsetRequest(null);
    if (msg.request !== undefined) {
      resolved.request = std_msgs.msg.Empty.Resolve(msg.request)
    }
    else {
      resolved.request = new std_msgs.msg.Empty()
    }

    return resolved;
    }
};

class GetMotorsHeadingOffsetResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.offsets = null;
    }
    else {
      if (initObj.hasOwnProperty('offsets')) {
        this.offsets = initObj.offsets
      }
      else {
        this.offsets = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMotorsHeadingOffsetResponse
    // Serialize message field [offsets]
    // Serialize the length for message field [offsets]
    bufferOffset = _serializer.uint32(obj.offsets.length, buffer, bufferOffset);
    obj.offsets.forEach((val) => {
      bufferOffset = MotorHeadingOffset.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMotorsHeadingOffsetResponse
    let len;
    let data = new GetMotorsHeadingOffsetResponse(null);
    // Deserialize message field [offsets]
    // Deserialize array length for message field [offsets]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.offsets = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.offsets[i] = MotorHeadingOffset.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.offsets.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/GetMotorsHeadingOffsetResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5893bfa41a37a6679598a2513e065848';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    robotnik_msgs/MotorHeadingOffset[] offsets
    
    
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
    const resolved = new GetMotorsHeadingOffsetResponse(null);
    if (msg.offsets !== undefined) {
      resolved.offsets = new Array(msg.offsets.length);
      for (let i = 0; i < resolved.offsets.length; ++i) {
        resolved.offsets[i] = MotorHeadingOffset.Resolve(msg.offsets[i]);
      }
    }
    else {
      resolved.offsets = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetMotorsHeadingOffsetRequest,
  Response: GetMotorsHeadingOffsetResponse,
  md5sum() { return 'cdf947b0b6f5aca552a9fd0b8e9d235b'; },
  datatype() { return 'robotnik_msgs/GetMotorsHeadingOffset'; }
};
