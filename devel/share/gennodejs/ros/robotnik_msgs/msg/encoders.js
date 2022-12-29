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

class encoders {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.counts = null;
      this.vel = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = [];
      }
      if (initObj.hasOwnProperty('counts')) {
        this.counts = initObj.counts
      }
      else {
        this.counts = [];
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type encoders
    // Serialize message field [type]
    bufferOffset = _arraySerializer.string(obj.type, buffer, bufferOffset, null);
    // Serialize message field [counts]
    bufferOffset = _arraySerializer.int32(obj.counts, buffer, bufferOffset, null);
    // Serialize message field [vel]
    bufferOffset = _arraySerializer.int32(obj.vel, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type encoders
    let len;
    let data = new encoders(null);
    // Deserialize message field [type]
    data.type = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [counts]
    data.counts = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [vel]
    data.vel = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.type.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.counts.length;
    length += 4 * object.vel.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/encoders';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b5def35e667417de284b17ffe2083938';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 0-> right incremental, 1-> left incremental, 2-> steer absolute
    string[] type
    int32[] counts
    int32[] vel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new encoders(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = []
    }

    if (msg.counts !== undefined) {
      resolved.counts = msg.counts;
    }
    else {
      resolved.counts = []
    }

    if (msg.vel !== undefined) {
      resolved.vel = msg.vel;
    }
    else {
      resolved.vel = []
    }

    return resolved;
    }
};

module.exports = encoders;
