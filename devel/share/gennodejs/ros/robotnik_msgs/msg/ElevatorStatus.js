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

class ElevatorStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.position = null;
      this.height = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = '';
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ElevatorStatus
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = _serializer.string(obj.position, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float32(obj.height, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ElevatorStatus
    let len;
    let data = new ElevatorStatus(null);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.state);
    length += _getByteLength(object.position);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/ElevatorStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4718bff9866c729031e595e6565fdb82';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # state
    string RAISING=raising
    string LOWERING=lowering
    string IDLE=idle
    string ERROR_G_IO=error_getting_io
    string ERROR_S_IO=error_setting_io
    string ERROR_TIMEOUT=error_timeout_in_action
    # position
    string UP=up
    string DOWN=down
    string UNKNOWN=unknown
    # IDLE, RAISING, LOWERING
    string state
    # UP, DOWN, UNKNOWN
    string position
    float32 height
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ElevatorStatus(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = ''
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    return resolved;
    }
};

// Constants for message
ElevatorStatus.Constants = {
  RAISING: 'raising',
  LOWERING: 'lowering',
  IDLE: 'idle',
  ERROR_G_IO: 'error_getting_io',
  ERROR_S_IO: 'error_setting_io',
  ERROR_TIMEOUT: 'error_timeout_in_action',
  UP: 'up',
  DOWN: 'down',
  UNKNOWN: 'unknown',
}

module.exports = ElevatorStatus;
