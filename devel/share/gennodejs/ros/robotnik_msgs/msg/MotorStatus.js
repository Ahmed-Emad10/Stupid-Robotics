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

class MotorStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.can_id = null;
      this.joint = null;
      this.state = null;
      this.status = null;
      this.communicationstatus = null;
      this.mode_of_operation = null;
      this.activestatusword = null;
      this.activedriveflags = null;
      this.digitaloutputs = null;
      this.digitalinputs = null;
      this.current = null;
      this.analoginputs = null;
      this.statusword = null;
      this.driveflags = null;
    }
    else {
      if (initObj.hasOwnProperty('can_id')) {
        this.can_id = initObj.can_id
      }
      else {
        this.can_id = 0;
      }
      if (initObj.hasOwnProperty('joint')) {
        this.joint = initObj.joint
      }
      else {
        this.joint = '';
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
      if (initObj.hasOwnProperty('communicationstatus')) {
        this.communicationstatus = initObj.communicationstatus
      }
      else {
        this.communicationstatus = '';
      }
      if (initObj.hasOwnProperty('mode_of_operation')) {
        this.mode_of_operation = initObj.mode_of_operation
      }
      else {
        this.mode_of_operation = '';
      }
      if (initObj.hasOwnProperty('activestatusword')) {
        this.activestatusword = initObj.activestatusword
      }
      else {
        this.activestatusword = [];
      }
      if (initObj.hasOwnProperty('activedriveflags')) {
        this.activedriveflags = initObj.activedriveflags
      }
      else {
        this.activedriveflags = [];
      }
      if (initObj.hasOwnProperty('digitaloutputs')) {
        this.digitaloutputs = initObj.digitaloutputs
      }
      else {
        this.digitaloutputs = [];
      }
      if (initObj.hasOwnProperty('digitalinputs')) {
        this.digitalinputs = initObj.digitalinputs
      }
      else {
        this.digitalinputs = [];
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = 0.0;
      }
      if (initObj.hasOwnProperty('analoginputs')) {
        this.analoginputs = initObj.analoginputs
      }
      else {
        this.analoginputs = [];
      }
      if (initObj.hasOwnProperty('statusword')) {
        this.statusword = initObj.statusword
      }
      else {
        this.statusword = '';
      }
      if (initObj.hasOwnProperty('driveflags')) {
        this.driveflags = initObj.driveflags
      }
      else {
        this.driveflags = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorStatus
    // Serialize message field [can_id]
    bufferOffset = _serializer.uint8(obj.can_id, buffer, bufferOffset);
    // Serialize message field [joint]
    bufferOffset = _serializer.string(obj.joint, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    // Serialize message field [communicationstatus]
    bufferOffset = _serializer.string(obj.communicationstatus, buffer, bufferOffset);
    // Serialize message field [mode_of_operation]
    bufferOffset = _serializer.string(obj.mode_of_operation, buffer, bufferOffset);
    // Serialize message field [activestatusword]
    bufferOffset = _arraySerializer.string(obj.activestatusword, buffer, bufferOffset, null);
    // Serialize message field [activedriveflags]
    bufferOffset = _arraySerializer.string(obj.activedriveflags, buffer, bufferOffset, null);
    // Serialize message field [digitaloutputs]
    bufferOffset = _arraySerializer.bool(obj.digitaloutputs, buffer, bufferOffset, null);
    // Serialize message field [digitalinputs]
    bufferOffset = _arraySerializer.bool(obj.digitalinputs, buffer, bufferOffset, null);
    // Serialize message field [current]
    bufferOffset = _serializer.float32(obj.current, buffer, bufferOffset);
    // Serialize message field [analoginputs]
    bufferOffset = _arraySerializer.float32(obj.analoginputs, buffer, bufferOffset, null);
    // Serialize message field [statusword]
    bufferOffset = _serializer.string(obj.statusword, buffer, bufferOffset);
    // Serialize message field [driveflags]
    bufferOffset = _serializer.string(obj.driveflags, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorStatus
    let len;
    let data = new MotorStatus(null);
    // Deserialize message field [can_id]
    data.can_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [joint]
    data.joint = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [communicationstatus]
    data.communicationstatus = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mode_of_operation]
    data.mode_of_operation = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [activestatusword]
    data.activestatusword = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [activedriveflags]
    data.activedriveflags = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [digitaloutputs]
    data.digitaloutputs = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [digitalinputs]
    data.digitalinputs = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [current]
    data.current = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [analoginputs]
    data.analoginputs = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [statusword]
    data.statusword = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [driveflags]
    data.driveflags = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.joint);
    length += _getByteLength(object.state);
    length += _getByteLength(object.status);
    length += _getByteLength(object.communicationstatus);
    length += _getByteLength(object.mode_of_operation);
    object.activestatusword.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.activedriveflags.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += object.digitaloutputs.length;
    length += object.digitalinputs.length;
    length += 4 * object.analoginputs.length;
    length += _getByteLength(object.statusword);
    length += _getByteLength(object.driveflags);
    return length + 53;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/MotorStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f36d1740e4c2f57c8e2136e05837a2ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 can_id
    string joint
    string state
    string status
    string communicationstatus
    string mode_of_operation
    string[] activestatusword
    string[] activedriveflags
    bool[] digitaloutputs
    bool[] digitalinputs
    float32 current
    float32[] analoginputs
    string statusword
    string driveflags
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorStatus(null);
    if (msg.can_id !== undefined) {
      resolved.can_id = msg.can_id;
    }
    else {
      resolved.can_id = 0
    }

    if (msg.joint !== undefined) {
      resolved.joint = msg.joint;
    }
    else {
      resolved.joint = ''
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    if (msg.communicationstatus !== undefined) {
      resolved.communicationstatus = msg.communicationstatus;
    }
    else {
      resolved.communicationstatus = ''
    }

    if (msg.mode_of_operation !== undefined) {
      resolved.mode_of_operation = msg.mode_of_operation;
    }
    else {
      resolved.mode_of_operation = ''
    }

    if (msg.activestatusword !== undefined) {
      resolved.activestatusword = msg.activestatusword;
    }
    else {
      resolved.activestatusword = []
    }

    if (msg.activedriveflags !== undefined) {
      resolved.activedriveflags = msg.activedriveflags;
    }
    else {
      resolved.activedriveflags = []
    }

    if (msg.digitaloutputs !== undefined) {
      resolved.digitaloutputs = msg.digitaloutputs;
    }
    else {
      resolved.digitaloutputs = []
    }

    if (msg.digitalinputs !== undefined) {
      resolved.digitalinputs = msg.digitalinputs;
    }
    else {
      resolved.digitalinputs = []
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = 0.0
    }

    if (msg.analoginputs !== undefined) {
      resolved.analoginputs = msg.analoginputs;
    }
    else {
      resolved.analoginputs = []
    }

    if (msg.statusword !== undefined) {
      resolved.statusword = msg.statusword;
    }
    else {
      resolved.statusword = ''
    }

    if (msg.driveflags !== undefined) {
      resolved.driveflags = msg.driveflags;
    }
    else {
      resolved.driveflags = ''
    }

    return resolved;
    }
};

module.exports = MotorStatus;
