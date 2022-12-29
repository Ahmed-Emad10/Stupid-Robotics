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

class LaserMode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaserMode
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaserMode
    let len;
    let data = new LaserMode(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/LaserMode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '04d69d26faf3f5fdd3d172ee0e35f8ea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string STANDARD=standard
    string DOCKING_STATION=docking_station
    string CART=cart
    string CART_DOCKING_CART=cart_docking_cart
    string DOCKING_CART=docking_cart
    string REDUCED=reduced
    string INVALID=invalid
    
    string name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaserMode(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    return resolved;
    }
};

// Constants for message
LaserMode.Constants = {
  STANDARD: 'standard',
  DOCKING_STATION: 'docking_station',
  CART: 'cart',
  CART_DOCKING_CART: 'cart_docking_cart',
  DOCKING_CART: 'docking_cart',
  REDUCED: 'reduced',
  INVALID: 'invalid',
}

module.exports = LaserMode;
