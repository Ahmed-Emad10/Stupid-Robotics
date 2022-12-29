// Auto-generated. Do not edit!

// (in-package robotnik_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Register = require('./Register.js');

//-----------------------------------------------------------

class Registers {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.registers = null;
    }
    else {
      if (initObj.hasOwnProperty('registers')) {
        this.registers = initObj.registers
      }
      else {
        this.registers = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Registers
    // Serialize message field [registers]
    // Serialize the length for message field [registers]
    bufferOffset = _serializer.uint32(obj.registers.length, buffer, bufferOffset);
    obj.registers.forEach((val) => {
      bufferOffset = Register.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Registers
    let len;
    let data = new Registers(null);
    // Deserialize message field [registers]
    // Deserialize array length for message field [registers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.registers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.registers[i] = Register.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.registers.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/Registers';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '12d8645a7a01078095f8477105240cef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    robotnik_msgs/Register[] registers
    ================================================================================
    MSG: robotnik_msgs/Register
    int32 id
    int32 value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Registers(null);
    if (msg.registers !== undefined) {
      resolved.registers = new Array(msg.registers.length);
      for (let i = 0; i < resolved.registers.length; ++i) {
        resolved.registers[i] = Register.Resolve(msg.registers[i]);
      }
    }
    else {
      resolved.registers = []
    }

    return resolved;
    }
};

module.exports = Registers;
