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

class Axis {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pan = null;
      this.tilt = null;
      this.zoom = null;
      this.focus = null;
      this.brightness = null;
      this.iris = null;
      this.autofocus = null;
      this.autoiris = null;
    }
    else {
      if (initObj.hasOwnProperty('pan')) {
        this.pan = initObj.pan
      }
      else {
        this.pan = 0.0;
      }
      if (initObj.hasOwnProperty('tilt')) {
        this.tilt = initObj.tilt
      }
      else {
        this.tilt = 0.0;
      }
      if (initObj.hasOwnProperty('zoom')) {
        this.zoom = initObj.zoom
      }
      else {
        this.zoom = 0.0;
      }
      if (initObj.hasOwnProperty('focus')) {
        this.focus = initObj.focus
      }
      else {
        this.focus = 0.0;
      }
      if (initObj.hasOwnProperty('brightness')) {
        this.brightness = initObj.brightness
      }
      else {
        this.brightness = 0.0;
      }
      if (initObj.hasOwnProperty('iris')) {
        this.iris = initObj.iris
      }
      else {
        this.iris = 0.0;
      }
      if (initObj.hasOwnProperty('autofocus')) {
        this.autofocus = initObj.autofocus
      }
      else {
        this.autofocus = false;
      }
      if (initObj.hasOwnProperty('autoiris')) {
        this.autoiris = initObj.autoiris
      }
      else {
        this.autoiris = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Axis
    // Serialize message field [pan]
    bufferOffset = _serializer.float32(obj.pan, buffer, bufferOffset);
    // Serialize message field [tilt]
    bufferOffset = _serializer.float32(obj.tilt, buffer, bufferOffset);
    // Serialize message field [zoom]
    bufferOffset = _serializer.float32(obj.zoom, buffer, bufferOffset);
    // Serialize message field [focus]
    bufferOffset = _serializer.float32(obj.focus, buffer, bufferOffset);
    // Serialize message field [brightness]
    bufferOffset = _serializer.float32(obj.brightness, buffer, bufferOffset);
    // Serialize message field [iris]
    bufferOffset = _serializer.float32(obj.iris, buffer, bufferOffset);
    // Serialize message field [autofocus]
    bufferOffset = _serializer.bool(obj.autofocus, buffer, bufferOffset);
    // Serialize message field [autoiris]
    bufferOffset = _serializer.bool(obj.autoiris, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Axis
    let len;
    let data = new Axis(null);
    // Deserialize message field [pan]
    data.pan = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tilt]
    data.tilt = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [zoom]
    data.zoom = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [focus]
    data.focus = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brightness]
    data.brightness = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [iris]
    data.iris = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [autofocus]
    data.autofocus = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [autoiris]
    data.autoiris = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/Axis';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e5a99fe291a5635d3f85f17b629d8088';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 pan
    float32 tilt
    float32 zoom
    float32 focus
    float32 brightness
    float32 iris
    bool autofocus
    bool autoiris
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Axis(null);
    if (msg.pan !== undefined) {
      resolved.pan = msg.pan;
    }
    else {
      resolved.pan = 0.0
    }

    if (msg.tilt !== undefined) {
      resolved.tilt = msg.tilt;
    }
    else {
      resolved.tilt = 0.0
    }

    if (msg.zoom !== undefined) {
      resolved.zoom = msg.zoom;
    }
    else {
      resolved.zoom = 0.0
    }

    if (msg.focus !== undefined) {
      resolved.focus = msg.focus;
    }
    else {
      resolved.focus = 0.0
    }

    if (msg.brightness !== undefined) {
      resolved.brightness = msg.brightness;
    }
    else {
      resolved.brightness = 0.0
    }

    if (msg.iris !== undefined) {
      resolved.iris = msg.iris;
    }
    else {
      resolved.iris = 0.0
    }

    if (msg.autofocus !== undefined) {
      resolved.autofocus = msg.autofocus;
    }
    else {
      resolved.autofocus = false
    }

    if (msg.autoiris !== undefined) {
      resolved.autoiris = msg.autoiris;
    }
    else {
      resolved.autoiris = false
    }

    return resolved;
    }
};

module.exports = Axis;
