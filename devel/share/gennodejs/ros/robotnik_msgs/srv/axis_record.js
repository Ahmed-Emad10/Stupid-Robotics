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

class axis_recordRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
      this.directory = null;
      this.profile = null;
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('directory')) {
        this.directory = initObj.directory
      }
      else {
        this.directory = '';
      }
      if (initObj.hasOwnProperty('profile')) {
        this.profile = initObj.profile
      }
      else {
        this.profile = '';
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type axis_recordRequest
    // Serialize message field [action]
    bufferOffset = _serializer.int8(obj.action, buffer, bufferOffset);
    // Serialize message field [directory]
    bufferOffset = _serializer.string(obj.directory, buffer, bufferOffset);
    // Serialize message field [profile]
    bufferOffset = _serializer.string(obj.profile, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type axis_recordRequest
    let len;
    let data = new axis_recordRequest(null);
    // Deserialize message field [action]
    data.action = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [directory]
    data.directory = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [profile]
    data.profile = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.directory);
    length += _getByteLength(object.profile);
    length += _getByteLength(object.id);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/axis_recordRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '39a90fb80eeb30fd1922ed05ed1384be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 
    # RECORD = 1, STOP = 2
    int8 action
    # DIRECTORY TO SAVE THE VIDEO
    string directory
    # PROFILE TO USE DURING THE RECORDING
    string profile
    # id / name of the recording
    string id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new axis_recordRequest(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.directory !== undefined) {
      resolved.directory = msg.directory;
    }
    else {
      resolved.directory = ''
    }

    if (msg.profile !== undefined) {
      resolved.profile = msg.profile;
    }
    else {
      resolved.profile = ''
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    return resolved;
    }
};

class axis_recordResponse {
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
    // Serializes a message object of type axis_recordResponse
    // Serialize message field [ret]
    bufferOffset = _serializer.bool(obj.ret, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type axis_recordResponse
    let len;
    let data = new axis_recordResponse(null);
    // Deserialize message field [ret]
    data.ret = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/axis_recordResponse';
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
    const resolved = new axis_recordResponse(null);
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
  Request: axis_recordRequest,
  Response: axis_recordResponse,
  md5sum() { return '2c515c47879efbb7383294f44d5255c1'; },
  datatype() { return 'robotnik_msgs/axis_record'; }
};
