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

class PantiltStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pan_pos = null;
      this.tilt_pos = null;
      this.pan_speed = null;
      this.tilt_speed = null;
    }
    else {
      if (initObj.hasOwnProperty('pan_pos')) {
        this.pan_pos = initObj.pan_pos
      }
      else {
        this.pan_pos = 0.0;
      }
      if (initObj.hasOwnProperty('tilt_pos')) {
        this.tilt_pos = initObj.tilt_pos
      }
      else {
        this.tilt_pos = 0.0;
      }
      if (initObj.hasOwnProperty('pan_speed')) {
        this.pan_speed = initObj.pan_speed
      }
      else {
        this.pan_speed = 0.0;
      }
      if (initObj.hasOwnProperty('tilt_speed')) {
        this.tilt_speed = initObj.tilt_speed
      }
      else {
        this.tilt_speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PantiltStatus
    // Serialize message field [pan_pos]
    bufferOffset = _serializer.float32(obj.pan_pos, buffer, bufferOffset);
    // Serialize message field [tilt_pos]
    bufferOffset = _serializer.float32(obj.tilt_pos, buffer, bufferOffset);
    // Serialize message field [pan_speed]
    bufferOffset = _serializer.float32(obj.pan_speed, buffer, bufferOffset);
    // Serialize message field [tilt_speed]
    bufferOffset = _serializer.float32(obj.tilt_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PantiltStatus
    let len;
    let data = new PantiltStatus(null);
    // Deserialize message field [pan_pos]
    data.pan_pos = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tilt_pos]
    data.tilt_pos = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pan_speed]
    data.pan_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tilt_speed]
    data.tilt_speed = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/PantiltStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b9addaf9ff55168a01a8a6a9e689829f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 pan_pos
    float32 tilt_pos
    float32 pan_speed
    float32 tilt_speed
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PantiltStatus(null);
    if (msg.pan_pos !== undefined) {
      resolved.pan_pos = msg.pan_pos;
    }
    else {
      resolved.pan_pos = 0.0
    }

    if (msg.tilt_pos !== undefined) {
      resolved.tilt_pos = msg.tilt_pos;
    }
    else {
      resolved.tilt_pos = 0.0
    }

    if (msg.pan_speed !== undefined) {
      resolved.pan_speed = msg.pan_speed;
    }
    else {
      resolved.pan_speed = 0.0
    }

    if (msg.tilt_speed !== undefined) {
      resolved.tilt_speed = msg.tilt_speed;
    }
    else {
      resolved.tilt_speed = 0.0
    }

    return resolved;
    }
};

module.exports = PantiltStatus;
