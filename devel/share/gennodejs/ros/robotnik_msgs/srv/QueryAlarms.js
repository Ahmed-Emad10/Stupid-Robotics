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

let QueryAlarm = require('../msg/QueryAlarm.js');

//-----------------------------------------------------------

class QueryAlarmsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type_query = null;
      this.start_date = null;
      this.end_date = null;
      this.top = null;
      this.filter_type = null;
    }
    else {
      if (initObj.hasOwnProperty('type_query')) {
        this.type_query = initObj.type_query
      }
      else {
        this.type_query = '';
      }
      if (initObj.hasOwnProperty('start_date')) {
        this.start_date = initObj.start_date
      }
      else {
        this.start_date = '';
      }
      if (initObj.hasOwnProperty('end_date')) {
        this.end_date = initObj.end_date
      }
      else {
        this.end_date = '';
      }
      if (initObj.hasOwnProperty('top')) {
        this.top = initObj.top
      }
      else {
        this.top = 0;
      }
      if (initObj.hasOwnProperty('filter_type')) {
        this.filter_type = initObj.filter_type
      }
      else {
        this.filter_type = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QueryAlarmsRequest
    // Serialize message field [type_query]
    bufferOffset = _serializer.string(obj.type_query, buffer, bufferOffset);
    // Serialize message field [start_date]
    bufferOffset = _serializer.string(obj.start_date, buffer, bufferOffset);
    // Serialize message field [end_date]
    bufferOffset = _serializer.string(obj.end_date, buffer, bufferOffset);
    // Serialize message field [top]
    bufferOffset = _serializer.int32(obj.top, buffer, bufferOffset);
    // Serialize message field [filter_type]
    bufferOffset = _serializer.string(obj.filter_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QueryAlarmsRequest
    let len;
    let data = new QueryAlarmsRequest(null);
    // Deserialize message field [type_query]
    data.type_query = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [start_date]
    data.start_date = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [end_date]
    data.end_date = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [top]
    data.top = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [filter_type]
    data.filter_type = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.type_query);
    length += _getByteLength(object.start_date);
    length += _getByteLength(object.end_date);
    length += _getByteLength(object.filter_type);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/QueryAlarmsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f1be883ec4718e1184241817a2fe2b57';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string TYPE_QUERY_ALL=ALL
    string TYPE_QUERY_TOP=TOP
    string TYPE_BETWEEN_DATE=BETWEEN_DATE
    string TYPE_TOP_BETWEEN_DATE=TOP_BETWEEN_DATE
    string FILTER_TYPE_NOTHING=NOTHING
    string FILTER_TYPE_EVENT=EVENT
    string FILTER_TYPE_ALARM=ALARM
    string FILTER_TYPE_ERROR=ERROR
    string type_query
    string start_date
    string end_date
    int32 top
    string filter_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new QueryAlarmsRequest(null);
    if (msg.type_query !== undefined) {
      resolved.type_query = msg.type_query;
    }
    else {
      resolved.type_query = ''
    }

    if (msg.start_date !== undefined) {
      resolved.start_date = msg.start_date;
    }
    else {
      resolved.start_date = ''
    }

    if (msg.end_date !== undefined) {
      resolved.end_date = msg.end_date;
    }
    else {
      resolved.end_date = ''
    }

    if (msg.top !== undefined) {
      resolved.top = msg.top;
    }
    else {
      resolved.top = 0
    }

    if (msg.filter_type !== undefined) {
      resolved.filter_type = msg.filter_type;
    }
    else {
      resolved.filter_type = ''
    }

    return resolved;
    }
};

// Constants for message
QueryAlarmsRequest.Constants = {
  TYPE_QUERY_ALL: 'ALL',
  TYPE_QUERY_TOP: 'TOP',
  TYPE_BETWEEN_DATE: 'BETWEEN_DATE',
  TYPE_TOP_BETWEEN_DATE: 'TOP_BETWEEN_DATE',
  FILTER_TYPE_NOTHING: 'NOTHING',
  FILTER_TYPE_EVENT: 'EVENT',
  FILTER_TYPE_ALARM: 'ALARM',
  FILTER_TYPE_ERROR: 'ERROR',
}

class QueryAlarmsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.alarms = null;
      this.success = null;
      this.msg = null;
    }
    else {
      if (initObj.hasOwnProperty('alarms')) {
        this.alarms = initObj.alarms
      }
      else {
        this.alarms = [];
      }
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
    // Serializes a message object of type QueryAlarmsResponse
    // Serialize message field [alarms]
    // Serialize the length for message field [alarms]
    bufferOffset = _serializer.uint32(obj.alarms.length, buffer, bufferOffset);
    obj.alarms.forEach((val) => {
      bufferOffset = QueryAlarm.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QueryAlarmsResponse
    let len;
    let data = new QueryAlarmsResponse(null);
    // Deserialize message field [alarms]
    // Deserialize array length for message field [alarms]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.alarms = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.alarms[i] = QueryAlarm.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.alarms.forEach((val) => {
      length += QueryAlarm.getMessageSize(val);
    });
    length += _getByteLength(object.msg);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/QueryAlarmsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6d2c5e83064a46d4d198ba7049acbc1c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    QueryAlarm[] alarms
    bool success
    string msg
    
    
    ================================================================================
    MSG: robotnik_msgs/QueryAlarm
    int32 alm_id
    string alm_component
    string alm_type
    string alm_group
    string alm_description
    string alm_start_time
    string alm_end_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new QueryAlarmsResponse(null);
    if (msg.alarms !== undefined) {
      resolved.alarms = new Array(msg.alarms.length);
      for (let i = 0; i < resolved.alarms.length; ++i) {
        resolved.alarms[i] = QueryAlarm.Resolve(msg.alarms[i]);
      }
    }
    else {
      resolved.alarms = []
    }

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
  Request: QueryAlarmsRequest,
  Response: QueryAlarmsResponse,
  md5sum() { return 'a3f95993dac9d6abc16a8e0ab77695c5'; },
  datatype() { return 'robotnik_msgs/QueryAlarms'; }
};
