// Auto-generated. Do not edit!

// (in-package robotnik_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ElevatorAction = require('../msg/ElevatorAction.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetElevatorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = new ElevatorAction();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetElevatorRequest
    // Serialize message field [action]
    bufferOffset = ElevatorAction.serialize(obj.action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetElevatorRequest
    let len;
    let data = new SetElevatorRequest(null);
    // Deserialize message field [action]
    data.action = ElevatorAction.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/SetElevatorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ba01edad69e94d31f2469c9b6db50a0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    robotnik_msgs/ElevatorAction action
    
    ================================================================================
    MSG: robotnik_msgs/ElevatorAction
    int32 RAISE=1
    int32 LOWER=-1
    int32 STOP=0
    int32 NO_ACTION=1000
    
    int32 action
    # speed, height for future applications
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetElevatorRequest(null);
    if (msg.action !== undefined) {
      resolved.action = ElevatorAction.Resolve(msg.action)
    }
    else {
      resolved.action = new ElevatorAction()
    }

    return resolved;
    }
};

class SetElevatorResponse {
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
    // Serializes a message object of type SetElevatorResponse
    // Serialize message field [ret]
    bufferOffset = _serializer.bool(obj.ret, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetElevatorResponse
    let len;
    let data = new SetElevatorResponse(null);
    // Deserialize message field [ret]
    data.ret = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/SetElevatorResponse';
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
    const resolved = new SetElevatorResponse(null);
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
  Request: SetElevatorRequest,
  Response: SetElevatorResponse,
  md5sum() { return 'b0ce8ab263ff08692a79c34185b69763'; },
  datatype() { return 'robotnik_msgs/SetElevator'; }
};
