// Auto-generated. Do not edit!

// (in-package robotnik_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let alarmmonitor = require('./alarmmonitor.js');

//-----------------------------------------------------------

class alarmsmonitor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.alarms = null;
    }
    else {
      if (initObj.hasOwnProperty('alarms')) {
        this.alarms = initObj.alarms
      }
      else {
        this.alarms = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type alarmsmonitor
    // Serialize message field [alarms]
    // Serialize the length for message field [alarms]
    bufferOffset = _serializer.uint32(obj.alarms.length, buffer, bufferOffset);
    obj.alarms.forEach((val) => {
      bufferOffset = alarmmonitor.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type alarmsmonitor
    let len;
    let data = new alarmsmonitor(null);
    // Deserialize message field [alarms]
    // Deserialize array length for message field [alarms]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.alarms = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.alarms[i] = alarmmonitor.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.alarms.forEach((val) => {
      length += alarmmonitor.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/alarmsmonitor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e686c3a2b0932118650b57e91f9eee9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    alarmmonitor[] alarms
    
    ================================================================================
    MSG: robotnik_msgs/alarmmonitor
    # type: error, warning, event
    string type
    # displaing number for monitoring
    int32 display
    # component
    string component
    # To be shown in HMI
    bool hmi
    # group: alarm group all alarms of same group will be reset at same time
    string group
    # text: more explained information about alarm, should include group, time, conditions, etc
    string text
    # seconds active
    uint64 seconds_active
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new alarmsmonitor(null);
    if (msg.alarms !== undefined) {
      resolved.alarms = new Array(msg.alarms.length);
      for (let i = 0; i < resolved.alarms.length; ++i) {
        resolved.alarms[i] = alarmmonitor.Resolve(msg.alarms[i]);
      }
    }
    else {
      resolved.alarms = []
    }

    return resolved;
    }
};

module.exports = alarmsmonitor;
