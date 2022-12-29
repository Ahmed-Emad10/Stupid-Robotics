// Auto-generated. Do not edit!

// (in-package robotnik_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ResetFromSubStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.subState = null;
    }
    else {
      if (initObj.hasOwnProperty('subState')) {
        this.subState = initObj.subState
      }
      else {
        this.subState = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ResetFromSubStateRequest
    // Serialize message field [subState]
    bufferOffset = _serializer.int32(obj.subState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ResetFromSubStateRequest
    let len;
    let data = new ResetFromSubStateRequest(null);
    // Deserialize message field [subState]
    data.subState = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/ResetFromSubStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a5b79633cee30f5c84879c01bef7033a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #new substate
    int32 subState
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ResetFromSubStateRequest(null);
    if (msg.subState !== undefined) {
      resolved.subState = msg.subState;
    }
    else {
      resolved.subState = 0
    }

    return resolved;
    }
};

class ResetFromSubStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.currentSubState = null;
      this.success = null;
      this.msg = null;
    }
    else {
      if (initObj.hasOwnProperty('currentSubState')) {
        this.currentSubState = initObj.currentSubState
      }
      else {
        this.currentSubState = 0;
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ResetFromSubStateResponse
    // Serialize message field [currentSubState]
    bufferOffset = _serializer.int32(obj.currentSubState, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ResetFromSubStateResponse
    let len;
    let data = new ResetFromSubStateResponse(null);
    // Deserialize message field [currentSubState]
    data.currentSubState = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.msg);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/ResetFromSubStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '29ac8b3c219a9c9ea312264e17cdc11f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    # substate of the component when change
    int32 currentSubState
    
    # The change is correct
    bool success
    
    # Text message - additional status information
    string msg
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ResetFromSubStateResponse(null);
    if (msg.currentSubState !== undefined) {
      resolved.currentSubState = msg.currentSubState;
    }
    else {
      resolved.currentSubState = 0
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.msg !== undefined) {
      resolved.msg = msg.msg;
    }
    else {
      resolved.msg = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ResetFromSubStateRequest,
  Response: ResetFromSubStateResponse,
  md5sum() { return '0692f61f0c43fdbd6f19facf658f4c39'; },
  datatype() { return 'robotnik_msgs/ResetFromSubState'; }
};
