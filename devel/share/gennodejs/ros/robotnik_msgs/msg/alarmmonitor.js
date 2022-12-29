// Auto-generated. Do not edit!

// (in-package robotnik_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class alarmmonitor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.display = null;
      this.component = null;
      this.hmi = null;
      this.group = null;
      this.text = null;
      this.seconds_active = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('display')) {
        this.display = initObj.display
      }
      else {
        this.display = 0;
      }
      if (initObj.hasOwnProperty('component')) {
        this.component = initObj.component
      }
      else {
        this.component = '';
      }
      if (initObj.hasOwnProperty('hmi')) {
        this.hmi = initObj.hmi
      }
      else {
        this.hmi = false;
      }
      if (initObj.hasOwnProperty('group')) {
        this.group = initObj.group
      }
      else {
        this.group = '';
      }
      if (initObj.hasOwnProperty('text')) {
        this.text = initObj.text
      }
      else {
        this.text = '';
      }
      if (initObj.hasOwnProperty('seconds_active')) {
        this.seconds_active = initObj.seconds_active
      }
      else {
        this.seconds_active = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type alarmmonitor
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [display]
    bufferOffset = _serializer.int32(obj.display, buffer, bufferOffset);
    // Serialize message field [component]
    bufferOffset = _serializer.string(obj.component, buffer, bufferOffset);
    // Serialize message field [hmi]
    bufferOffset = _serializer.bool(obj.hmi, buffer, bufferOffset);
    // Serialize message field [group]
    bufferOffset = _serializer.string(obj.group, buffer, bufferOffset);
    // Serialize message field [text]
    bufferOffset = _serializer.string(obj.text, buffer, bufferOffset);
    // Serialize message field [seconds_active]
    bufferOffset = _serializer.uint64(obj.seconds_active, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type alarmmonitor
    let len;
    let data = new alarmmonitor(null);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [display]
    data.display = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [component]
    data.component = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [hmi]
    data.hmi = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [group]
    data.group = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [text]
    data.text = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [seconds_active]
    data.seconds_active = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.type);
    length += _getByteLength(object.component);
    length += _getByteLength(object.group);
    length += _getByteLength(object.text);
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/alarmmonitor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bb3d91213f2300b7fc9bb9063b1a7b1e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new alarmmonitor(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.display !== undefined) {
      resolved.display = msg.display;
    }
    else {
      resolved.display = 0
    }

    if (msg.component !== undefined) {
      resolved.component = msg.component;
    }
    else {
      resolved.component = ''
    }

    if (msg.hmi !== undefined) {
      resolved.hmi = msg.hmi;
    }
    else {
      resolved.hmi = false
    }

    if (msg.group !== undefined) {
      resolved.group = msg.group;
    }
    else {
      resolved.group = ''
    }

    if (msg.text !== undefined) {
      resolved.text = msg.text;
    }
    else {
      resolved.text = ''
    }

    if (msg.seconds_active !== undefined) {
      resolved.seconds_active = msg.seconds_active;
    }
    else {
      resolved.seconds_active = 0
    }

    return resolved;
    }
};

module.exports = alarmmonitor;
