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

class Data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.interface = null;
      this.bytes_sent = null;
      this.bytes_received = null;
      this.units_sent = null;
      this.units_received = null;
      this.packages_sent = null;
      this.packages_received = null;
    }
    else {
      if (initObj.hasOwnProperty('interface')) {
        this.interface = initObj.interface
      }
      else {
        this.interface = '';
      }
      if (initObj.hasOwnProperty('bytes_sent')) {
        this.bytes_sent = initObj.bytes_sent
      }
      else {
        this.bytes_sent = 0.0;
      }
      if (initObj.hasOwnProperty('bytes_received')) {
        this.bytes_received = initObj.bytes_received
      }
      else {
        this.bytes_received = 0.0;
      }
      if (initObj.hasOwnProperty('units_sent')) {
        this.units_sent = initObj.units_sent
      }
      else {
        this.units_sent = '';
      }
      if (initObj.hasOwnProperty('units_received')) {
        this.units_received = initObj.units_received
      }
      else {
        this.units_received = '';
      }
      if (initObj.hasOwnProperty('packages_sent')) {
        this.packages_sent = initObj.packages_sent
      }
      else {
        this.packages_sent = 0;
      }
      if (initObj.hasOwnProperty('packages_received')) {
        this.packages_received = initObj.packages_received
      }
      else {
        this.packages_received = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Data
    // Serialize message field [interface]
    bufferOffset = _serializer.string(obj.interface, buffer, bufferOffset);
    // Serialize message field [bytes_sent]
    bufferOffset = _serializer.float32(obj.bytes_sent, buffer, bufferOffset);
    // Serialize message field [bytes_received]
    bufferOffset = _serializer.float32(obj.bytes_received, buffer, bufferOffset);
    // Serialize message field [units_sent]
    bufferOffset = _serializer.string(obj.units_sent, buffer, bufferOffset);
    // Serialize message field [units_received]
    bufferOffset = _serializer.string(obj.units_received, buffer, bufferOffset);
    // Serialize message field [packages_sent]
    bufferOffset = _serializer.int32(obj.packages_sent, buffer, bufferOffset);
    // Serialize message field [packages_received]
    bufferOffset = _serializer.int32(obj.packages_received, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Data
    let len;
    let data = new Data(null);
    // Deserialize message field [interface]
    data.interface = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [bytes_sent]
    data.bytes_sent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bytes_received]
    data.bytes_received = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [units_sent]
    data.units_sent = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [units_received]
    data.units_received = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [packages_sent]
    data.packages_sent = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [packages_received]
    data.packages_received = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.interface);
    length += _getByteLength(object.units_sent);
    length += _getByteLength(object.units_received);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/Data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'beae478f52d7795f673d8edc9e4295a2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string interface
    float32 bytes_sent
    float32 bytes_received
    string units_sent
    string units_received
    int32 packages_sent
    int32 packages_received
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Data(null);
    if (msg.interface !== undefined) {
      resolved.interface = msg.interface;
    }
    else {
      resolved.interface = ''
    }

    if (msg.bytes_sent !== undefined) {
      resolved.bytes_sent = msg.bytes_sent;
    }
    else {
      resolved.bytes_sent = 0.0
    }

    if (msg.bytes_received !== undefined) {
      resolved.bytes_received = msg.bytes_received;
    }
    else {
      resolved.bytes_received = 0.0
    }

    if (msg.units_sent !== undefined) {
      resolved.units_sent = msg.units_sent;
    }
    else {
      resolved.units_sent = ''
    }

    if (msg.units_received !== undefined) {
      resolved.units_received = msg.units_received;
    }
    else {
      resolved.units_received = ''
    }

    if (msg.packages_sent !== undefined) {
      resolved.packages_sent = msg.packages_sent;
    }
    else {
      resolved.packages_sent = 0
    }

    if (msg.packages_received !== undefined) {
      resolved.packages_received = msg.packages_received;
    }
    else {
      resolved.packages_received = 0
    }

    return resolved;
    }
};

module.exports = Data;
