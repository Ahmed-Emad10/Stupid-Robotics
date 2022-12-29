// Auto-generated. Do not edit!

// (in-package robotnik_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Data = require('./Data.js');

//-----------------------------------------------------------

class Interfaces {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.total = null;
      this.interfaces = null;
    }
    else {
      if (initObj.hasOwnProperty('total')) {
        this.total = initObj.total
      }
      else {
        this.total = new Data();
      }
      if (initObj.hasOwnProperty('interfaces')) {
        this.interfaces = initObj.interfaces
      }
      else {
        this.interfaces = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Interfaces
    // Serialize message field [total]
    bufferOffset = Data.serialize(obj.total, buffer, bufferOffset);
    // Serialize message field [interfaces]
    // Serialize the length for message field [interfaces]
    bufferOffset = _serializer.uint32(obj.interfaces.length, buffer, bufferOffset);
    obj.interfaces.forEach((val) => {
      bufferOffset = Data.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Interfaces
    let len;
    let data = new Interfaces(null);
    // Deserialize message field [total]
    data.total = Data.deserialize(buffer, bufferOffset);
    // Deserialize message field [interfaces]
    // Deserialize array length for message field [interfaces]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.interfaces = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.interfaces[i] = Data.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Data.getMessageSize(object.total);
    object.interfaces.forEach((val) => {
      length += Data.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/Interfaces';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2cae798f4cdadfdb2326b84ac55dc3ea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Contains the total number of bytes and pkts
    Data total
    # Contains information of every interface
    Data[] interfaces
    
    
    ================================================================================
    MSG: robotnik_msgs/Data
    string interface
    float32 bytes_sent
    float32 bytes_received
    string units_sent
    string units_received
    int32 packages_sent
    int32 packages_received
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Interfaces(null);
    if (msg.total !== undefined) {
      resolved.total = Data.Resolve(msg.total)
    }
    else {
      resolved.total = new Data()
    }

    if (msg.interfaces !== undefined) {
      resolved.interfaces = new Array(msg.interfaces.length);
      for (let i = 0; i < resolved.interfaces.length; ++i) {
        resolved.interfaces[i] = Data.Resolve(msg.interfaces[i]);
      }
    }
    else {
      resolved.interfaces = []
    }

    return resolved;
    }
};

module.exports = Interfaces;
