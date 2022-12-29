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

class InsertTaskRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id_submission = null;
      this.description_task = null;
      this.datatime_start = null;
    }
    else {
      if (initObj.hasOwnProperty('id_submission')) {
        this.id_submission = initObj.id_submission
      }
      else {
        this.id_submission = 0;
      }
      if (initObj.hasOwnProperty('description_task')) {
        this.description_task = initObj.description_task
      }
      else {
        this.description_task = '';
      }
      if (initObj.hasOwnProperty('datatime_start')) {
        this.datatime_start = initObj.datatime_start
      }
      else {
        this.datatime_start = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InsertTaskRequest
    // Serialize message field [id_submission]
    bufferOffset = _serializer.int32(obj.id_submission, buffer, bufferOffset);
    // Serialize message field [description_task]
    bufferOffset = _serializer.string(obj.description_task, buffer, bufferOffset);
    // Serialize message field [datatime_start]
    bufferOffset = _serializer.string(obj.datatime_start, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InsertTaskRequest
    let len;
    let data = new InsertTaskRequest(null);
    // Deserialize message field [id_submission]
    data.id_submission = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [description_task]
    data.description_task = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [datatime_start]
    data.datatime_start = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.description_task);
    length += _getByteLength(object.datatime_start);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/InsertTaskRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '415fc1cb1de92194825450f4e7e89346';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id_submission
    string description_task
    string datatime_start
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InsertTaskRequest(null);
    if (msg.id_submission !== undefined) {
      resolved.id_submission = msg.id_submission;
    }
    else {
      resolved.id_submission = 0
    }

    if (msg.description_task !== undefined) {
      resolved.description_task = msg.description_task;
    }
    else {
      resolved.description_task = ''
    }

    if (msg.datatime_start !== undefined) {
      resolved.datatime_start = msg.datatime_start;
    }
    else {
      resolved.datatime_start = ''
    }

    return resolved;
    }
};

class InsertTaskResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.msg = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
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
    // Serializes a message object of type InsertTaskResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InsertTaskResponse
    let len;
    let data = new InsertTaskResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.msg);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/InsertTaskResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e835b04f93d0b30fd8cb71e0967a16db';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string msg
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InsertTaskResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
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

module.exports = {
  Request: InsertTaskRequest,
  Response: InsertTaskResponse,
  md5sum() { return '36ad6270fb0855e3101179d36268dd90'; },
  datatype() { return 'robotnik_msgs/InsertTask'; }
};
