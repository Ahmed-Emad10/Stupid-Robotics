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

class LaserStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.detecting_obstacles = null;
      this.contaminated = null;
      this.free_warning = null;
      this.warning_zones = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('detecting_obstacles')) {
        this.detecting_obstacles = initObj.detecting_obstacles
      }
      else {
        this.detecting_obstacles = false;
      }
      if (initObj.hasOwnProperty('contaminated')) {
        this.contaminated = initObj.contaminated
      }
      else {
        this.contaminated = false;
      }
      if (initObj.hasOwnProperty('free_warning')) {
        this.free_warning = initObj.free_warning
      }
      else {
        this.free_warning = false;
      }
      if (initObj.hasOwnProperty('warning_zones')) {
        this.warning_zones = initObj.warning_zones
      }
      else {
        this.warning_zones = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaserStatus
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [detecting_obstacles]
    bufferOffset = _serializer.bool(obj.detecting_obstacles, buffer, bufferOffset);
    // Serialize message field [contaminated]
    bufferOffset = _serializer.bool(obj.contaminated, buffer, bufferOffset);
    // Serialize message field [free_warning]
    bufferOffset = _serializer.bool(obj.free_warning, buffer, bufferOffset);
    // Serialize message field [warning_zones]
    bufferOffset = _arraySerializer.bool(obj.warning_zones, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaserStatus
    let len;
    let data = new LaserStatus(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [detecting_obstacles]
    data.detecting_obstacles = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [contaminated]
    data.contaminated = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [free_warning]
    data.free_warning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [warning_zones]
    data.warning_zones = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += object.warning_zones.length;
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/LaserStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '59f57d3a0c4aa9b97dcd8bd40152ebb4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    bool detecting_obstacles
    bool contaminated
    bool free_warning
    # one input per each warning zone.
    # first areas are closer to the robot (i.e. more restrictive)
    bool[] warning_zones 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaserStatus(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.detecting_obstacles !== undefined) {
      resolved.detecting_obstacles = msg.detecting_obstacles;
    }
    else {
      resolved.detecting_obstacles = false
    }

    if (msg.contaminated !== undefined) {
      resolved.contaminated = msg.contaminated;
    }
    else {
      resolved.contaminated = false
    }

    if (msg.free_warning !== undefined) {
      resolved.free_warning = msg.free_warning;
    }
    else {
      resolved.free_warning = false
    }

    if (msg.warning_zones !== undefined) {
      resolved.warning_zones = msg.warning_zones;
    }
    else {
      resolved.warning_zones = []
    }

    return resolved;
    }
};

module.exports = LaserStatus;
