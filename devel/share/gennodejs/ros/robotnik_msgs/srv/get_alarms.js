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

let alarmsmonitor = require('../msg/alarmsmonitor.js');

//-----------------------------------------------------------

class get_alarmsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_alarmsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_alarmsRequest
    let len;
    let data = new get_alarmsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/get_alarmsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_alarmsRequest(null);
    return resolved;
    }
};

class get_alarmsResponse {
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
        this.alarms = new alarmsmonitor();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_alarmsResponse
    // Serialize message field [alarms]
    bufferOffset = alarmsmonitor.serialize(obj.alarms, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_alarmsResponse
    let len;
    let data = new get_alarmsResponse(null);
    // Deserialize message field [alarms]
    data.alarms = alarmsmonitor.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += alarmsmonitor.getMessageSize(object.alarms);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/get_alarmsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4550354b6bec7529a93833858063eaed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    alarmsmonitor alarms
    
    
    ================================================================================
    MSG: robotnik_msgs/alarmsmonitor
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
    const resolved = new get_alarmsResponse(null);
    if (msg.alarms !== undefined) {
      resolved.alarms = alarmsmonitor.Resolve(msg.alarms)
    }
    else {
      resolved.alarms = new alarmsmonitor()
    }

    return resolved;
    }
};

module.exports = {
  Request: get_alarmsRequest,
  Response: get_alarmsResponse,
  md5sum() { return '4550354b6bec7529a93833858063eaed'; },
  datatype() { return 'robotnik_msgs/get_alarms'; }
};
