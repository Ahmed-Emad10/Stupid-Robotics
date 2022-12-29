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

class State {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.desired_freq = null;
      this.real_freq = null;
      this.state_description = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('desired_freq')) {
        this.desired_freq = initObj.desired_freq
      }
      else {
        this.desired_freq = 0.0;
      }
      if (initObj.hasOwnProperty('real_freq')) {
        this.real_freq = initObj.real_freq
      }
      else {
        this.real_freq = 0.0;
      }
      if (initObj.hasOwnProperty('state_description')) {
        this.state_description = initObj.state_description
      }
      else {
        this.state_description = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type State
    // Serialize message field [state]
    bufferOffset = _serializer.int32(obj.state, buffer, bufferOffset);
    // Serialize message field [desired_freq]
    bufferOffset = _serializer.float32(obj.desired_freq, buffer, bufferOffset);
    // Serialize message field [real_freq]
    bufferOffset = _serializer.float32(obj.real_freq, buffer, bufferOffset);
    // Serialize message field [state_description]
    bufferOffset = _serializer.string(obj.state_description, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type State
    let len;
    let data = new State(null);
    // Deserialize message field [state]
    data.state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [desired_freq]
    data.desired_freq = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [real_freq]
    data.real_freq = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [state_description]
    data.state_description = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.state_description);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/State';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b3a486e7c5d573e5d1475cd7c02a518b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # constants
    int32 INIT_STATE = 100
    int32 STANDBY_STATE = 200
    int32 READY_STATE = 300
    int32 EMERGENCY_STATE = 400
    int32 FAILURE_STATE = 500
    int32 SHUTDOWN_STATE = 600
    int32 UNKOWN_STATE = 700
    
    # state of the component
    int32 state
    # desired control loop frecuency
    float32 desired_freq
    # real frecuency 
    float32 real_freq
    # Description of the state
    string state_description
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new State(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.desired_freq !== undefined) {
      resolved.desired_freq = msg.desired_freq;
    }
    else {
      resolved.desired_freq = 0.0
    }

    if (msg.real_freq !== undefined) {
      resolved.real_freq = msg.real_freq;
    }
    else {
      resolved.real_freq = 0.0
    }

    if (msg.state_description !== undefined) {
      resolved.state_description = msg.state_description;
    }
    else {
      resolved.state_description = ''
    }

    return resolved;
    }
};

// Constants for message
State.Constants = {
  INIT_STATE: 100,
  STANDBY_STATE: 200,
  READY_STATE: 300,
  EMERGENCY_STATE: 400,
  FAILURE_STATE: 500,
  SHUTDOWN_STATE: 600,
  UNKOWN_STATE: 700,
}

module.exports = State;
