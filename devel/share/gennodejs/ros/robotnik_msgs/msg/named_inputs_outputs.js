// Auto-generated. Do not edit!

// (in-package robotnik_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let named_input_output = require('./named_input_output.js');

//-----------------------------------------------------------

class named_inputs_outputs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.digital_inputs = null;
      this.digital_outputs = null;
    }
    else {
      if (initObj.hasOwnProperty('digital_inputs')) {
        this.digital_inputs = initObj.digital_inputs
      }
      else {
        this.digital_inputs = [];
      }
      if (initObj.hasOwnProperty('digital_outputs')) {
        this.digital_outputs = initObj.digital_outputs
      }
      else {
        this.digital_outputs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type named_inputs_outputs
    // Serialize message field [digital_inputs]
    // Serialize the length for message field [digital_inputs]
    bufferOffset = _serializer.uint32(obj.digital_inputs.length, buffer, bufferOffset);
    obj.digital_inputs.forEach((val) => {
      bufferOffset = named_input_output.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [digital_outputs]
    // Serialize the length for message field [digital_outputs]
    bufferOffset = _serializer.uint32(obj.digital_outputs.length, buffer, bufferOffset);
    obj.digital_outputs.forEach((val) => {
      bufferOffset = named_input_output.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type named_inputs_outputs
    let len;
    let data = new named_inputs_outputs(null);
    // Deserialize message field [digital_inputs]
    // Deserialize array length for message field [digital_inputs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.digital_inputs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.digital_inputs[i] = named_input_output.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [digital_outputs]
    // Deserialize array length for message field [digital_outputs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.digital_outputs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.digital_outputs[i] = named_input_output.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.digital_inputs.forEach((val) => {
      length += named_input_output.getMessageSize(val);
    });
    object.digital_outputs.forEach((val) => {
      length += named_input_output.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/named_inputs_outputs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e3301c19a16019595490fc28259868bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    robotnik_msgs/named_input_output[] digital_inputs
    robotnik_msgs/named_input_output[] digital_outputs
    ================================================================================
    MSG: robotnik_msgs/named_input_output
    string name
    bool value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new named_inputs_outputs(null);
    if (msg.digital_inputs !== undefined) {
      resolved.digital_inputs = new Array(msg.digital_inputs.length);
      for (let i = 0; i < resolved.digital_inputs.length; ++i) {
        resolved.digital_inputs[i] = named_input_output.Resolve(msg.digital_inputs[i]);
      }
    }
    else {
      resolved.digital_inputs = []
    }

    if (msg.digital_outputs !== undefined) {
      resolved.digital_outputs = new Array(msg.digital_outputs.length);
      for (let i = 0; i < resolved.digital_outputs.length; ++i) {
        resolved.digital_outputs[i] = named_input_output.Resolve(msg.digital_outputs[i]);
      }
    }
    else {
      resolved.digital_outputs = []
    }

    return resolved;
    }
};

module.exports = named_inputs_outputs;
