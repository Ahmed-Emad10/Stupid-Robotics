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

class SubState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.substate = null;
      this.substate_description = null;
      this.msg = null;
    }
    else {
      if (initObj.hasOwnProperty('substate')) {
        this.substate = initObj.substate
      }
      else {
        this.substate = 0;
      }
      if (initObj.hasOwnProperty('substate_description')) {
        this.substate_description = initObj.substate_description
      }
      else {
        this.substate_description = '';
      }
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SubState
    // Serialize message field [substate]
    bufferOffset = _serializer.int32(obj.substate, buffer, bufferOffset);
    // Serialize message field [substate_description]
    bufferOffset = _serializer.string(obj.substate_description, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubState
    let len;
    let data = new SubState(null);
    // Deserialize message field [substate]
    data.substate = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [substate_description]
    data.substate_description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.substate_description);
    length += _getByteLength(object.msg);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/SubState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd67ef59716a56f2892e9ebccd174a9e5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    # substate of the component
    # each component has its own state machines on each state 
    int32 substate
    
    # Description of the substate
    string substate_description
    
    # Text message - additional status information
    string msg
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SubState(null);
    if (msg.substate !== undefined) {
      resolved.substate = msg.substate;
    }
    else {
      resolved.substate = 0
    }

    if (msg.substate_description !== undefined) {
      resolved.substate_description = msg.substate_description;
    }
    else {
      resolved.substate_description = ''
    }

    if (msg.msg !== undefined) {
      resolved.msg = msg.msg;
    }
    else {
      resolved.msg = ''
    }

    return resolved;
    }
};

module.exports = SubState;
