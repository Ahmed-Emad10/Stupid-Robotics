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

let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class set_float_valueRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_float_valueRequest
    // Serialize message field [value]
    bufferOffset = _serializer.float32(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_float_valueRequest
    let len;
    let data = new set_float_valueRequest(null);
    // Deserialize message field [value]
    data.value = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/set_float_valueRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0aca93dcf6d857f0e5a0dc6be1eaa9fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_float_valueRequest(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0.0
    }

    return resolved;
    }
};

class set_float_valueResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ret = null;
      this.errorMessage = null;
    }
    else {
      if (initObj.hasOwnProperty('ret')) {
        this.ret = initObj.ret
      }
      else {
        this.ret = false;
      }
      if (initObj.hasOwnProperty('errorMessage')) {
        this.errorMessage = initObj.errorMessage
      }
      else {
        this.errorMessage = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_float_valueResponse
    // Serialize message field [ret]
    bufferOffset = _serializer.bool(obj.ret, buffer, bufferOffset);
    // Serialize message field [errorMessage]
    bufferOffset = std_msgs.msg.String.serialize(obj.errorMessage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_float_valueResponse
    let len;
    let data = new set_float_valueResponse(null);
    // Deserialize message field [ret]
    data.ret = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [errorMessage]
    data.errorMessage = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.errorMessage);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/set_float_valueResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b607fdf6f13faab17a8c316347e7f65b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool ret
    std_msgs/String errorMessage
    
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_float_valueResponse(null);
    if (msg.ret !== undefined) {
      resolved.ret = msg.ret;
    }
    else {
      resolved.ret = false
    }

    if (msg.errorMessage !== undefined) {
      resolved.errorMessage = std_msgs.msg.String.Resolve(msg.errorMessage)
    }
    else {
      resolved.errorMessage = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = {
  Request: set_float_valueRequest,
  Response: set_float_valueResponse,
  md5sum() { return '1040fd23868f733b1106a6a6948ae41b'; },
  datatype() { return 'robotnik_msgs/set_float_value'; }
};
