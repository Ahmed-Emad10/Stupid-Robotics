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

class MotorCurrent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.can_id = null;
      this.name = null;
      this.continuous_current_limit = null;
      this.current_peak_time = null;
      this.current_peak_limit = null;
    }
    else {
      if (initObj.hasOwnProperty('can_id')) {
        this.can_id = initObj.can_id
      }
      else {
        this.can_id = [];
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
      if (initObj.hasOwnProperty('continuous_current_limit')) {
        this.continuous_current_limit = initObj.continuous_current_limit
      }
      else {
        this.continuous_current_limit = [];
      }
      if (initObj.hasOwnProperty('current_peak_time')) {
        this.current_peak_time = initObj.current_peak_time
      }
      else {
        this.current_peak_time = [];
      }
      if (initObj.hasOwnProperty('current_peak_limit')) {
        this.current_peak_limit = initObj.current_peak_limit
      }
      else {
        this.current_peak_limit = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorCurrent
    // Serialize message field [can_id]
    bufferOffset = _arraySerializer.int32(obj.can_id, buffer, bufferOffset, null);
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [continuous_current_limit]
    bufferOffset = _arraySerializer.float32(obj.continuous_current_limit, buffer, bufferOffset, null);
    // Serialize message field [current_peak_time]
    bufferOffset = _arraySerializer.float32(obj.current_peak_time, buffer, bufferOffset, null);
    // Serialize message field [current_peak_limit]
    bufferOffset = _arraySerializer.float32(obj.current_peak_limit, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorCurrent
    let len;
    let data = new MotorCurrent(null);
    // Deserialize message field [can_id]
    data.can_id = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [continuous_current_limit]
    data.continuous_current_limit = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [current_peak_time]
    data.current_peak_time = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [current_peak_limit]
    data.current_peak_limit = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.can_id.length;
    object.name.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.continuous_current_limit.length;
    length += 4 * object.current_peak_time.length;
    length += 4 * object.current_peak_limit.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/MotorCurrent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '683e2e0ea0c1b322bc7f35b2f02088ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # either can_id or name are set
    # if can_id is -1, then this refers to all motors.
    int32[] can_id
    string[] name
    float32[] continuous_current_limit # Amperes
    float32[] current_peak_time # Seconds
    float32[] current_peak_limit # Amperes
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorCurrent(null);
    if (msg.can_id !== undefined) {
      resolved.can_id = msg.can_id;
    }
    else {
      resolved.can_id = []
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    if (msg.continuous_current_limit !== undefined) {
      resolved.continuous_current_limit = msg.continuous_current_limit;
    }
    else {
      resolved.continuous_current_limit = []
    }

    if (msg.current_peak_time !== undefined) {
      resolved.current_peak_time = msg.current_peak_time;
    }
    else {
      resolved.current_peak_time = []
    }

    if (msg.current_peak_limit !== undefined) {
      resolved.current_peak_limit = msg.current_peak_limit;
    }
    else {
      resolved.current_peak_limit = []
    }

    return resolved;
    }
};

module.exports = MotorCurrent;
