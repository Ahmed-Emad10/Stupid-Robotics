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

class MotorPID {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.can_id = null;
      this.name = null;
      this.kp = null;
      this.ki = null;
      this.kd = null;
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
      if (initObj.hasOwnProperty('kp')) {
        this.kp = initObj.kp
      }
      else {
        this.kp = [];
      }
      if (initObj.hasOwnProperty('ki')) {
        this.ki = initObj.ki
      }
      else {
        this.ki = [];
      }
      if (initObj.hasOwnProperty('kd')) {
        this.kd = initObj.kd
      }
      else {
        this.kd = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorPID
    // Serialize message field [can_id]
    bufferOffset = _arraySerializer.int32(obj.can_id, buffer, bufferOffset, null);
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [kp]
    bufferOffset = _arraySerializer.float32(obj.kp, buffer, bufferOffset, null);
    // Serialize message field [ki]
    bufferOffset = _arraySerializer.float32(obj.ki, buffer, bufferOffset, null);
    // Serialize message field [kd]
    bufferOffset = _arraySerializer.float32(obj.kd, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorPID
    let len;
    let data = new MotorPID(null);
    // Deserialize message field [can_id]
    data.can_id = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [kp]
    data.kp = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [ki]
    data.ki = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [kd]
    data.kd = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.can_id.length;
    object.name.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.kp.length;
    length += 4 * object.ki.length;
    length += 4 * object.kd.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/MotorPID';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a4f1747645e7d598483fc2ed471a485d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # either can_id or name are set
    # if can_id is -1, then this refers to all motors.
    int32[] can_id
    string[] name
    float32[] kp
    float32[] ki
    float32[] kd
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorPID(null);
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

    if (msg.kp !== undefined) {
      resolved.kp = msg.kp;
    }
    else {
      resolved.kp = []
    }

    if (msg.ki !== undefined) {
      resolved.ki = msg.ki;
    }
    else {
      resolved.ki = []
    }

    if (msg.kd !== undefined) {
      resolved.kd = msg.kd;
    }
    else {
      resolved.kd = []
    }

    return resolved;
    }
};

module.exports = MotorPID;
