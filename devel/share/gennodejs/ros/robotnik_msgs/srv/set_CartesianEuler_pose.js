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


//-----------------------------------------------------------

class set_CartesianEuler_poseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.A = null;
      this.B = null;
      this.C = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('A')) {
        this.A = initObj.A
      }
      else {
        this.A = 0.0;
      }
      if (initObj.hasOwnProperty('B')) {
        this.B = initObj.B
      }
      else {
        this.B = 0.0;
      }
      if (initObj.hasOwnProperty('C')) {
        this.C = initObj.C
      }
      else {
        this.C = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_CartesianEuler_poseRequest
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float32(obj.z, buffer, bufferOffset);
    // Serialize message field [A]
    bufferOffset = _serializer.float32(obj.A, buffer, bufferOffset);
    // Serialize message field [B]
    bufferOffset = _serializer.float32(obj.B, buffer, bufferOffset);
    // Serialize message field [C]
    bufferOffset = _serializer.float32(obj.C, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_CartesianEuler_poseRequest
    let len;
    let data = new set_CartesianEuler_poseRequest(null);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [A]
    data.A = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [B]
    data.B = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [C]
    data.C = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/set_CartesianEuler_poseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cdb2d75b0c143402ced22eff49c8aa05';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # New robot X position (mm)
    float32 x
    # New robot Y position (mm)
    float32 y
    # New robot Z position (mm)
    float32 z
    # New robot Orientation (grad)
    float32 A
    # New robot Orientation (grad)
    float32 B
    # New robot Orientation (grad)
    float32 C
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_CartesianEuler_poseRequest(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.A !== undefined) {
      resolved.A = msg.A;
    }
    else {
      resolved.A = 0.0
    }

    if (msg.B !== undefined) {
      resolved.B = msg.B;
    }
    else {
      resolved.B = 0.0
    }

    if (msg.C !== undefined) {
      resolved.C = msg.C;
    }
    else {
      resolved.C = 0.0
    }

    return resolved;
    }
};

class set_CartesianEuler_poseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ret = null;
    }
    else {
      if (initObj.hasOwnProperty('ret')) {
        this.ret = initObj.ret
      }
      else {
        this.ret = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_CartesianEuler_poseResponse
    // Serialize message field [ret]
    bufferOffset = _serializer.bool(obj.ret, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_CartesianEuler_poseResponse
    let len;
    let data = new set_CartesianEuler_poseResponse(null);
    // Deserialize message field [ret]
    data.ret = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/set_CartesianEuler_poseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2cc9e9d8c464550830df49c160979ad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool ret 
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_CartesianEuler_poseResponse(null);
    if (msg.ret !== undefined) {
      resolved.ret = msg.ret;
    }
    else {
      resolved.ret = false
    }

    return resolved;
    }
};

module.exports = {
  Request: set_CartesianEuler_poseRequest,
  Response: set_CartesianEuler_poseResponse,
  md5sum() { return '2519f4d60ca7104c2905597455df82b0'; },
  datatype() { return 'robotnik_msgs/set_CartesianEuler_pose'; }
};
