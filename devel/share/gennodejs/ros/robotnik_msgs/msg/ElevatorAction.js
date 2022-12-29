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

class ElevatorAction {
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
        this.action = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ElevatorAction
    // Serialize message field [action]
    bufferOffset = _serializer.int32(obj.action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ElevatorAction
    let len;
    let data = new ElevatorAction(null);
    // Deserialize message field [action]
    data.action = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/ElevatorAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '632c616886d6575f7d7145cd0384a359';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ElevatorAction(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    return resolved;
    }
};

// Constants for message
ElevatorAction.Constants = {
  RAISE: 1,
  LOWER: -1,
  STOP: 0,
  NO_ACTION: 1000,
}

module.exports = ElevatorAction;
