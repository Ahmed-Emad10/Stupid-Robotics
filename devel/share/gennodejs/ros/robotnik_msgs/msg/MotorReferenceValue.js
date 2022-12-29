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

class MotorReferenceValue {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_value = null;
      this.target_ref = null;
      this.actual_value = null;
      this.actual_ref = null;
    }
    else {
      if (initObj.hasOwnProperty('target_value')) {
        this.target_value = initObj.target_value
      }
      else {
        this.target_value = 0.0;
      }
      if (initObj.hasOwnProperty('target_ref')) {
        this.target_ref = initObj.target_ref
      }
      else {
        this.target_ref = 0;
      }
      if (initObj.hasOwnProperty('actual_value')) {
        this.actual_value = initObj.actual_value
      }
      else {
        this.actual_value = 0.0;
      }
      if (initObj.hasOwnProperty('actual_ref')) {
        this.actual_ref = initObj.actual_ref
      }
      else {
        this.actual_ref = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorReferenceValue
    // Serialize message field [target_value]
    bufferOffset = _serializer.float32(obj.target_value, buffer, bufferOffset);
    // Serialize message field [target_ref]
    bufferOffset = _serializer.int32(obj.target_ref, buffer, bufferOffset);
    // Serialize message field [actual_value]
    bufferOffset = _serializer.float32(obj.actual_value, buffer, bufferOffset);
    // Serialize message field [actual_ref]
    bufferOffset = _serializer.int32(obj.actual_ref, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorReferenceValue
    let len;
    let data = new MotorReferenceValue(null);
    // Deserialize message field [target_value]
    data.target_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [target_ref]
    data.target_ref = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [actual_value]
    data.actual_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [actual_ref]
    data.actual_ref = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/MotorReferenceValue';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '32c091680a0778bc1b7ba8846b79715b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 target_value
    int32 target_ref
    float32 actual_value
    int32 actual_ref
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorReferenceValue(null);
    if (msg.target_value !== undefined) {
      resolved.target_value = msg.target_value;
    }
    else {
      resolved.target_value = 0.0
    }

    if (msg.target_ref !== undefined) {
      resolved.target_ref = msg.target_ref;
    }
    else {
      resolved.target_ref = 0
    }

    if (msg.actual_value !== undefined) {
      resolved.actual_value = msg.actual_value;
    }
    else {
      resolved.actual_value = 0.0
    }

    if (msg.actual_ref !== undefined) {
      resolved.actual_ref = msg.actual_ref;
    }
    else {
      resolved.actual_ref = 0
    }

    return resolved;
    }
};

module.exports = MotorReferenceValue;
