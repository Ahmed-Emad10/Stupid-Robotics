// Auto-generated. Do not edit!

// (in-package robotnik_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MotorReferenceValue = require('./MotorReferenceValue.js');

//-----------------------------------------------------------

class MotorReferenceValueArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.velocity = null;
      this.position = null;
      this.torque = null;
    }
    else {
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new MotorReferenceValue();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new MotorReferenceValue();
      }
      if (initObj.hasOwnProperty('torque')) {
        this.torque = initObj.torque
      }
      else {
        this.torque = new MotorReferenceValue();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorReferenceValueArray
    // Serialize message field [velocity]
    bufferOffset = MotorReferenceValue.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = MotorReferenceValue.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [torque]
    bufferOffset = MotorReferenceValue.serialize(obj.torque, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorReferenceValueArray
    let len;
    let data = new MotorReferenceValueArray(null);
    // Deserialize message field [velocity]
    data.velocity = MotorReferenceValue.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = MotorReferenceValue.deserialize(buffer, bufferOffset);
    // Deserialize message field [torque]
    data.torque = MotorReferenceValue.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/MotorReferenceValueArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8397e49dd79671c43ebd06b3be44fa96';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MotorReferenceValue velocity
    MotorReferenceValue position
    MotorReferenceValue torque
    
    ================================================================================
    MSG: robotnik_msgs/MotorReferenceValue
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
    const resolved = new MotorReferenceValueArray(null);
    if (msg.velocity !== undefined) {
      resolved.velocity = MotorReferenceValue.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new MotorReferenceValue()
    }

    if (msg.position !== undefined) {
      resolved.position = MotorReferenceValue.Resolve(msg.position)
    }
    else {
      resolved.position = new MotorReferenceValue()
    }

    if (msg.torque !== undefined) {
      resolved.torque = MotorReferenceValue.Resolve(msg.torque)
    }
    else {
      resolved.torque = new MotorReferenceValue()
    }

    return resolved;
    }
};

module.exports = MotorReferenceValueArray;
