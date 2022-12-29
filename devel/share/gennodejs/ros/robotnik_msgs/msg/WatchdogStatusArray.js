// Auto-generated. Do not edit!

// (in-package robotnik_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WatchdogStatus = require('./WatchdogStatus.js');

//-----------------------------------------------------------

class WatchdogStatusArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WatchdogStatusArray
    // Serialize message field [status]
    // Serialize the length for message field [status]
    bufferOffset = _serializer.uint32(obj.status.length, buffer, bufferOffset);
    obj.status.forEach((val) => {
      bufferOffset = WatchdogStatus.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WatchdogStatusArray
    let len;
    let data = new WatchdogStatusArray(null);
    // Deserialize message field [status]
    // Deserialize array length for message field [status]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.status = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.status[i] = WatchdogStatus.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.status.forEach((val) => {
      length += WatchdogStatus.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/WatchdogStatusArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1df2dbf9ebcb5eb8dc5708907e8cc240';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    WatchdogStatus[] status
    
    ================================================================================
    MSG: robotnik_msgs/WatchdogStatus
    string id
    # False if it's ok, True if fails
    bool timed_out
    string description
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WatchdogStatusArray(null);
    if (msg.status !== undefined) {
      resolved.status = new Array(msg.status.length);
      for (let i = 0; i < resolved.status.length; ++i) {
        resolved.status[i] = WatchdogStatus.Resolve(msg.status[i]);
      }
    }
    else {
      resolved.status = []
    }

    return resolved;
    }
};

module.exports = WatchdogStatusArray;
