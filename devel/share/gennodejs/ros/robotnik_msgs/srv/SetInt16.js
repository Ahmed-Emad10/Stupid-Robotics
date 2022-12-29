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

let ReturnMessage = require('../msg/ReturnMessage.js');

//-----------------------------------------------------------

class SetInt16Request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new std_msgs.msg.Int16();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetInt16Request
    // Serialize message field [data]
    bufferOffset = std_msgs.msg.Int16.serialize(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetInt16Request
    let len;
    let data = new SetInt16Request(null);
    // Deserialize message field [data]
    data.data = std_msgs.msg.Int16.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/SetInt16Request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0f9585f47779b9607f760bef85a254c0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Int16 data
    
    ================================================================================
    MSG: std_msgs/Int16
    int16 data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetInt16Request(null);
    if (msg.data !== undefined) {
      resolved.data = std_msgs.msg.Int16.Resolve(msg.data)
    }
    else {
      resolved.data = new std_msgs.msg.Int16()
    }

    return resolved;
    }
};

class SetInt16Response {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ret = null;
    }
    else {
      if (initObj.hasOwnProperty('ret')) {
        this.ret = initObj.ret
      }
      else {
        this.ret = new ReturnMessage();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetInt16Response
    // Serialize message field [ret]
    bufferOffset = ReturnMessage.serialize(obj.ret, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetInt16Response
    let len;
    let data = new SetInt16Response(null);
    // Deserialize message field [ret]
    data.ret = ReturnMessage.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ReturnMessage.getMessageSize(object.ret);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/SetInt16Response';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1cc59476b1732f75af5b4512acb5adbe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    robotnik_msgs/ReturnMessage ret
    
    ================================================================================
    MSG: robotnik_msgs/ReturnMessage
    bool success
    string message
    int16 code
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetInt16Response(null);
    if (msg.ret !== undefined) {
      resolved.ret = ReturnMessage.Resolve(msg.ret)
    }
    else {
      resolved.ret = new ReturnMessage()
    }

    return resolved;
    }
};

module.exports = {
  Request: SetInt16Request,
  Response: SetInt16Response,
  md5sum() { return '8f054c32edfcf21f89433b2b24f041c9'; },
  datatype() { return 'robotnik_msgs/SetInt16'; }
};
