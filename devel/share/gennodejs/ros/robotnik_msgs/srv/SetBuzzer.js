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

class SetBuzzerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enable = null;
      this.beep_freq = null;
      this.time_enabled = null;
    }
    else {
      if (initObj.hasOwnProperty('enable')) {
        this.enable = initObj.enable
      }
      else {
        this.enable = false;
      }
      if (initObj.hasOwnProperty('beep_freq')) {
        this.beep_freq = initObj.beep_freq
      }
      else {
        this.beep_freq = 0.0;
      }
      if (initObj.hasOwnProperty('time_enabled')) {
        this.time_enabled = initObj.time_enabled
      }
      else {
        this.time_enabled = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetBuzzerRequest
    // Serialize message field [enable]
    bufferOffset = _serializer.bool(obj.enable, buffer, bufferOffset);
    // Serialize message field [beep_freq]
    bufferOffset = _serializer.float64(obj.beep_freq, buffer, bufferOffset);
    // Serialize message field [time_enabled]
    bufferOffset = _serializer.float64(obj.time_enabled, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetBuzzerRequest
    let len;
    let data = new SetBuzzerRequest(null);
    // Deserialize message field [enable]
    data.enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [beep_freq]
    data.beep_freq = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [time_enabled]
    data.time_enabled = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/SetBuzzerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7cb4f8ecf7ad9c3ff741117e0298b359';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool enable
    float64 beep_freq
    float64 time_enabled
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetBuzzerRequest(null);
    if (msg.enable !== undefined) {
      resolved.enable = msg.enable;
    }
    else {
      resolved.enable = false
    }

    if (msg.beep_freq !== undefined) {
      resolved.beep_freq = msg.beep_freq;
    }
    else {
      resolved.beep_freq = 0.0
    }

    if (msg.time_enabled !== undefined) {
      resolved.time_enabled = msg.time_enabled;
    }
    else {
      resolved.time_enabled = 0.0
    }

    return resolved;
    }
};

class SetBuzzerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msg = null;
      this.ret = null;
    }
    else {
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = '';
      }
      if (initObj.hasOwnProperty('ret')) {
        this.ret = initObj.ret
      }
      else {
        this.ret = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetBuzzerResponse
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    // Serialize message field [ret]
    bufferOffset = _serializer.bool(obj.ret, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetBuzzerResponse
    let len;
    let data = new SetBuzzerResponse(null);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ret]
    data.ret = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.msg);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/SetBuzzerResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61cb52ead9791e6a2cd0753b71d52c54';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string msg
    bool ret
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetBuzzerResponse(null);
    if (msg.msg !== undefined) {
      resolved.msg = msg.msg;
    }
    else {
      resolved.msg = ''
    }

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
  Request: SetBuzzerRequest,
  Response: SetBuzzerResponse,
  md5sum() { return '41793a7387718993b9d0e132905ea3e3'; },
  datatype() { return 'robotnik_msgs/SetBuzzer'; }
};
