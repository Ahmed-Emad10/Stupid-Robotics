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

class QueryAlarm {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.alm_id = null;
      this.alm_component = null;
      this.alm_type = null;
      this.alm_group = null;
      this.alm_description = null;
      this.alm_start_time = null;
      this.alm_end_time = null;
    }
    else {
      if (initObj.hasOwnProperty('alm_id')) {
        this.alm_id = initObj.alm_id
      }
      else {
        this.alm_id = 0;
      }
      if (initObj.hasOwnProperty('alm_component')) {
        this.alm_component = initObj.alm_component
      }
      else {
        this.alm_component = '';
      }
      if (initObj.hasOwnProperty('alm_type')) {
        this.alm_type = initObj.alm_type
      }
      else {
        this.alm_type = '';
      }
      if (initObj.hasOwnProperty('alm_group')) {
        this.alm_group = initObj.alm_group
      }
      else {
        this.alm_group = '';
      }
      if (initObj.hasOwnProperty('alm_description')) {
        this.alm_description = initObj.alm_description
      }
      else {
        this.alm_description = '';
      }
      if (initObj.hasOwnProperty('alm_start_time')) {
        this.alm_start_time = initObj.alm_start_time
      }
      else {
        this.alm_start_time = '';
      }
      if (initObj.hasOwnProperty('alm_end_time')) {
        this.alm_end_time = initObj.alm_end_time
      }
      else {
        this.alm_end_time = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QueryAlarm
    // Serialize message field [alm_id]
    bufferOffset = _serializer.int32(obj.alm_id, buffer, bufferOffset);
    // Serialize message field [alm_component]
    bufferOffset = _serializer.string(obj.alm_component, buffer, bufferOffset);
    // Serialize message field [alm_type]
    bufferOffset = _serializer.string(obj.alm_type, buffer, bufferOffset);
    // Serialize message field [alm_group]
    bufferOffset = _serializer.string(obj.alm_group, buffer, bufferOffset);
    // Serialize message field [alm_description]
    bufferOffset = _serializer.string(obj.alm_description, buffer, bufferOffset);
    // Serialize message field [alm_start_time]
    bufferOffset = _serializer.string(obj.alm_start_time, buffer, bufferOffset);
    // Serialize message field [alm_end_time]
    bufferOffset = _serializer.string(obj.alm_end_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QueryAlarm
    let len;
    let data = new QueryAlarm(null);
    // Deserialize message field [alm_id]
    data.alm_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [alm_component]
    data.alm_component = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [alm_type]
    data.alm_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [alm_group]
    data.alm_group = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [alm_description]
    data.alm_description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [alm_start_time]
    data.alm_start_time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [alm_end_time]
    data.alm_end_time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.alm_component);
    length += _getByteLength(object.alm_type);
    length += _getByteLength(object.alm_group);
    length += _getByteLength(object.alm_description);
    length += _getByteLength(object.alm_start_time);
    length += _getByteLength(object.alm_end_time);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/QueryAlarm';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f3c7e9979cb91a050b98067ffb98adff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new QueryAlarm(null);
    if (msg.alm_id !== undefined) {
      resolved.alm_id = msg.alm_id;
    }
    else {
      resolved.alm_id = 0
    }

    if (msg.alm_component !== undefined) {
      resolved.alm_component = msg.alm_component;
    }
    else {
      resolved.alm_component = ''
    }

    if (msg.alm_type !== undefined) {
      resolved.alm_type = msg.alm_type;
    }
    else {
      resolved.alm_type = ''
    }

    if (msg.alm_group !== undefined) {
      resolved.alm_group = msg.alm_group;
    }
    else {
      resolved.alm_group = ''
    }

    if (msg.alm_description !== undefined) {
      resolved.alm_description = msg.alm_description;
    }
    else {
      resolved.alm_description = ''
    }

    if (msg.alm_start_time !== undefined) {
      resolved.alm_start_time = msg.alm_start_time;
    }
    else {
      resolved.alm_start_time = ''
    }

    if (msg.alm_end_time !== undefined) {
      resolved.alm_end_time = msg.alm_end_time;
    }
    else {
      resolved.alm_end_time = ''
    }

    return resolved;
    }
};

module.exports = QueryAlarm;
